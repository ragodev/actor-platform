//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoSerializer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/Container.h"
#include "im/actor/model/network/mtp/entity/Drop.h"
#include "im/actor/model/network/mtp/entity/MTPush.h"
#include "im/actor/model/network/mtp/entity/MTRpcRequest.h"
#include "im/actor/model/network/mtp/entity/MTRpcResponse.h"
#include "im/actor/model/network/mtp/entity/MessageAck.h"
#include "im/actor/model/network/mtp/entity/NewSessionCreated.h"
#include "im/actor/model/network/mtp/entity/Ping.h"
#include "im/actor/model/network/mtp/entity/Pong.h"
#include "im/actor/model/network/mtp/entity/ProtoSerializer.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/RequestResend.h"
#include "im/actor/model/network/mtp/entity/UnsentMessage.h"
#include "im/actor/model/network/mtp/entity/UnsentResponse.h"
#include "im/actor/model/network/mtp/entity/rpc/Push.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcFloodWait.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcInternalError.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcOk.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcRequest.h"
#include "im/actor/model/util/DataInput.h"
#include "java/io/IOException.h"

@implementation MTProtoSerializer

+ (MTProtoStruct *)readMessagePayloadWithByteArray:(IOSByteArray *)bs {
  return MTProtoSerializer_readMessagePayloadWithByteArray_(bs);
}

+ (MTProtoStruct *)readMessagePayloadWithAMDataInput:(AMDataInput *)bs {
  return MTProtoSerializer_readMessagePayloadWithAMDataInput_(bs);
}

+ (MTProtoStruct *)readRpcResponsePayloadWithByteArray:(IOSByteArray *)data {
  return MTProtoSerializer_readRpcResponsePayloadWithByteArray_(data);
}

+ (MTProtoStruct *)readRpcRequestPayloadWithAMDataInput:(AMDataInput *)bs {
  return MTProtoSerializer_readRpcRequestPayloadWithAMDataInput_(bs);
}

+ (MTPush *)readUpdateWithByteArray:(IOSByteArray *)bs {
  return MTProtoSerializer_readUpdateWithByteArray_(bs);
}

+ (MTPush *)readUpdateWithAMDataInput:(AMDataInput *)bs {
  return MTProtoSerializer_readUpdateWithAMDataInput_(bs);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readMessagePayloadWithByteArray:", "readMessagePayload", "Lim.actor.model.network.mtp.entity.ProtoStruct;", 0x9, "Ljava.io.IOException;" },
    { "readMessagePayloadWithAMDataInput:", "readMessagePayload", "Lim.actor.model.network.mtp.entity.ProtoStruct;", 0x9, "Ljava.io.IOException;" },
    { "readRpcResponsePayloadWithByteArray:", "readRpcResponsePayload", "Lim.actor.model.network.mtp.entity.ProtoStruct;", 0x9, "Ljava.io.IOException;" },
    { "readRpcRequestPayloadWithAMDataInput:", "readRpcRequestPayload", "Lim.actor.model.network.mtp.entity.ProtoStruct;", 0x9, "Ljava.io.IOException;" },
    { "readUpdateWithByteArray:", "readUpdate", "Lim.actor.model.network.mtp.entity.rpc.Push;", 0x9, "Ljava.io.IOException;" },
    { "readUpdateWithAMDataInput:", "readUpdate", "Lim.actor.model.network.mtp.entity.rpc.Push;", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _MTProtoSerializer = { 1, "ProtoSerializer", "im.actor.model.network.mtp.entity", NULL, 0x1, 7, methods, 0, NULL, 0, NULL};
  return &_MTProtoSerializer;
}

@end

MTProtoStruct *MTProtoSerializer_readMessagePayloadWithByteArray_(IOSByteArray *bs) {
  MTProtoSerializer_init();
  return MTProtoSerializer_readMessagePayloadWithAMDataInput_([[AMDataInput alloc] initWithByteArray:bs withInt:0 withInt:((IOSByteArray *) nil_chk(bs))->size_]);
}

MTProtoStruct *MTProtoSerializer_readMessagePayloadWithAMDataInput_(AMDataInput *bs) {
  MTProtoSerializer_init();
  jint header = [((AMDataInput *) nil_chk(bs)) readByte];
  switch (header) {
    case MTPing_HEADER:
    return [[MTPing alloc] initWithAMDataInput:bs];
    case MTPong_HEADER:
    return [[MTPong alloc] initWithAMDataInput:bs];
    case MTDrop_HEADER:
    return [[MTDrop alloc] initWithAMDataInput:bs];
    case MTContainer_HEADER:
    return [[MTContainer alloc] initWithAMDataInput:bs];
    case MTMTRpcRequest_HEADER:
    return [[MTMTRpcRequest alloc] initWithAMDataInput:bs];
    case MTMTRpcResponse_HEADER:
    return [[MTMTRpcResponse alloc] initWithAMDataInput:bs];
    case MTMessageAck_HEADER:
    return [[MTMessageAck alloc] initWithAMDataInput:bs];
    case MTNewSessionCreated_HEADER:
    return [[MTNewSessionCreated alloc] initWithAMDataInput:bs];
    case MTMTPush_HEADER:
    return [[MTMTPush alloc] initWithAMDataInput:bs];
    case MTUnsentMessage_HEADER:
    return [[MTUnsentMessage alloc] initWithAMDataInput:bs];
    case MTUnsentResponse_HEADER:
    return [[MTUnsentResponse alloc] initWithAMDataInput:bs];
    case MTRequestResend_HEADER:
    return [[MTUnsentResponse alloc] initWithAMDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I", @"Unable to read proto object with header #", header)];
}

MTProtoStruct *MTProtoSerializer_readRpcResponsePayloadWithByteArray_(IOSByteArray *data) {
  MTProtoSerializer_init();
  AMDataInput *bs = [[AMDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_];
  jint header = [bs readByte];
  switch (header) {
    case MTRpcOk_HEADER:
    return [[MTRpcOk alloc] initWithAMDataInput:bs];
    case MTRpcError_HEADER:
    return [[MTRpcError alloc] initWithAMDataInput:bs];
    case MTRpcFloodWait_HEADER:
    return [[MTRpcFloodWait alloc] initWithAMDataInput:bs];
    case MTRpcInternalError_HEADER:
    return [[MTRpcInternalError alloc] initWithAMDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:@"Unable to read proto object"];
}

MTProtoStruct *MTProtoSerializer_readRpcRequestPayloadWithAMDataInput_(AMDataInput *bs) {
  MTProtoSerializer_init();
  jint header = [((AMDataInput *) nil_chk(bs)) readByte];
  switch (header) {
    case MTRpcRequest_HEADER:
    return [[MTRpcRequest alloc] initWithAMDataInput:bs];
  }
  @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I", @"Unable to read proto object with header #", header)];
}

MTPush *MTProtoSerializer_readUpdateWithByteArray_(IOSByteArray *bs) {
  MTProtoSerializer_init();
  return MTProtoSerializer_readUpdateWithAMDataInput_([[AMDataInput alloc] initWithByteArray:bs withInt:0 withInt:((IOSByteArray *) nil_chk(bs))->size_]);
}

MTPush *MTProtoSerializer_readUpdateWithAMDataInput_(AMDataInput *bs) {
  MTProtoSerializer_init();
  return [[MTPush alloc] initWithAMDataInput:bs];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTProtoSerializer)
