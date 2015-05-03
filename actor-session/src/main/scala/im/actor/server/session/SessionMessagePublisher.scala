package im.actor.server.session

import scala.annotation.tailrec
import scala.collection.immutable

import akka.actor._
import akka.stream.actor._

import im.actor.api.rpc.ClientData
import im.actor.server.mtproto.protocol._
import im.actor.server.session.SessionMessage.SubscribeCommand

private[session] object SessionMessagePublisher {
  def props() = Props[SessionMessagePublisher]
}

private[session] class SessionMessagePublisher extends ActorPublisher[SessionStreamMessage] with ActorLogging {

  import ActorPublisherMessage._

  import SessionStreamMessage._

  // TODO: MaxQueueSize
  private[this] var messageQueue = immutable.Queue.empty[SessionStreamMessage]

  def receive = {
    case (mb: MessageBox, clientData: ClientData) ⇒
      log.info("MessageBox: {} clientData: {}", mb, clientData)

      mb.body match {
        case Container(bodies) ⇒
          val ackMessage = SendProtoMessage(MessageAck.outgoing(bodies.map(_.messageId) :+ mb.messageId))
          val handleMessages = bodies.view.filterNot(_.body.isInstanceOf[MessageAck]).map(HandleMessageBox(_, clientData)).toList
          publishMessages(ackMessage :: handleMessages)
        case _ ⇒
          val handleMessage = HandleMessageBox(mb, clientData)

          mb.body match {
            case _: MessageAck ⇒ publishMessage(handleMessage)
            case _             ⇒ publishMessages(List(SendProtoMessage(MessageAck.outgoing(Seq(mb.messageId))), handleMessage))
          }
      }
    case msg: SendProtoMessage ⇒
      publishMessage(msg)
    case command: SubscribeCommand ⇒
      publishMessage(HandleSubscribe(command))
    case Request(_) ⇒
      deliverBuf()
    case Cancel ⇒
      context.stop(self)
    case unmatched ⇒
      log.debug("Unmatched {}", unmatched)
  }

  private def publishMessage(message: SessionStreamMessage): Unit = {
    if (messageQueue.isEmpty && totalDemand > 0)
      onNext(message)
    else {
      messageQueue = messageQueue.enqueue(message)
      deliverBuf()
    }
  }

  private def publishMessages(messages: immutable.Iterable[SessionStreamMessage]): Unit = {
    messageQueue = messageQueue.enqueue(messages)
    deliverBuf()
  }

  @tailrec final def deliverBuf(): Unit =
    if (isActive && totalDemand > 0)
      messageQueue.dequeueOption match {
        case Some((el, queue)) ⇒
          messageQueue = queue
          onNext(el)
          deliverBuf()
        case None ⇒
      }

  override def preRestart(reason: Throwable, message: Option[Any]): Unit = {
    log.error(reason, "Exception thrown, message: {}", message)
  }
}
