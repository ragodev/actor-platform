//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/Peer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityPeer () {
 @public
  ImActorModelEntityPeerTypeEnum *peerType_;
  jint peerId_;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(ImActorModelEntityPeer, peerType_, ImActorModelEntityPeerTypeEnum *)

@implementation ImActorModelEntityPeer

+ (ImActorModelEntityPeer *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityPeer_fromBytesWithByteArray_(data);
}

+ (ImActorModelEntityPeer *)fromUidWithLong:(jlong)uid {
  return ImActorModelEntityPeer_fromUidWithLong_(uid);
}

+ (ImActorModelEntityPeer *)userWithInt:(jint)uid {
  return ImActorModelEntityPeer_userWithInt_(uid);
}

+ (ImActorModelEntityPeer *)groupWithInt:(jint)gid {
  return ImActorModelEntityPeer_groupWithInt_(gid);
}

- (instancetype)initWithImActorModelEntityPeerTypeEnum:(ImActorModelEntityPeerTypeEnum *)peerType
                                               withInt:(jint)peerId {
  if (self = [super init]) {
    self->peerType_ = peerType;
    self->peerId_ = peerId;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getUid {
  jint type;
  switch ([peerType_ ordinal]) {
    default:
    case ImActorModelEntityPeerType_PRIVATE:
    type = 0;
    break;
    case ImActorModelEntityPeerType_GROUP:
    type = 1;
    break;
    case ImActorModelEntityPeerType_EMAIL:
    type = 2;
    break;
  }
  return peerId_ + (LShift64((jlong) type, 32));
}

- (ImActorModelEntityPeerTypeEnum *)getPeerType {
  return peerType_;
}

- (jint)getPeerId {
  return peerId_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelEntityPeer *peer = (ImActorModelEntityPeer *) check_class_cast(o, [ImActorModelEntityPeer class]);
  if (peerId_ != ((ImActorModelEntityPeer *) nil_chk(peer))->peerId_) return NO;
  if (peerType_ != peer->peerType_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = ((jint) [((ImActorModelEntityPeerTypeEnum *) nil_chk(peerType_)) hash]);
  result = 31 * result + peerId_;
  return result;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  peerId_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  switch ([values getIntWithInt:2]) {
    default:
    case 1:
    peerType_ = ImActorModelEntityPeerTypeEnum_get_PRIVATE();
    break;
    case 2:
    peerType_ = ImActorModelEntityPeerTypeEnum_get_EMAIL();
    break;
    case 3:
    peerType_ = ImActorModelEntityPeerTypeEnum_get_GROUP();
    break;
  }
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:peerId_];
  switch ([peerType_ ordinal]) {
    default:
    case ImActorModelEntityPeerType_PRIVATE:
    [writer writeIntWithInt:2 withInt:1];
    break;
    case ImActorModelEntityPeerType_EMAIL:
    [writer writeIntWithInt:2 withInt:2];
    break;
    case ImActorModelEntityPeerType_GROUP:
    [writer writeIntWithInt:2 withInt:3];
    break;
  }
}

- (void)copyAllFieldsTo:(ImActorModelEntityPeer *)other {
  [super copyAllFieldsTo:other];
  other->peerType_ = peerType_;
  other->peerId_ = peerId_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.entity.Peer;", 0x9, "Ljava.io.IOException;" },
    { "fromUidWithLong:", "fromUid", "Lim.actor.model.entity.Peer;", 0x9, NULL },
    { "userWithInt:", "user", "Lim.actor.model.entity.Peer;", 0x9, NULL },
    { "groupWithInt:", "group", "Lim.actor.model.entity.Peer;", 0x9, NULL },
    { "initWithImActorModelEntityPeerTypeEnum:withInt:", "Peer", NULL, 0x1, NULL },
    { "init", "Peer", NULL, 0x2, NULL },
    { "getUid", NULL, "J", 0x1, NULL },
    { "getPeerType", NULL, "Lim.actor.model.entity.PeerType;", 0x1, NULL },
    { "getPeerId", NULL, "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "peerType_", NULL, 0x2, "Lim.actor.model.entity.PeerType;", NULL,  },
    { "peerId_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelEntityPeer = { 1, "Peer", "im.actor.model.entity", NULL, 0x1, 13, methods, 2, fields, 0, NULL};
  return &_ImActorModelEntityPeer;
}

@end

ImActorModelEntityPeer *ImActorModelEntityPeer_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityPeer_init();
  return ((ImActorModelEntityPeer *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelEntityPeer alloc] init], data));
}

ImActorModelEntityPeer *ImActorModelEntityPeer_fromUidWithLong_(jlong uid) {
  ImActorModelEntityPeer_init();
  jint id_ = (jint) (uid & (jlong) 0xFFFFFFFFLL);
  jint type = (jint) ((RShift64(uid, 32)) & (jlong) 0xFFFFFFFFLL);
  switch (type) {
    default:
    case 0:
    return [[ImActorModelEntityPeer alloc] initWithImActorModelEntityPeerTypeEnum:ImActorModelEntityPeerTypeEnum_get_PRIVATE() withInt:id_];
    case 1:
    return [[ImActorModelEntityPeer alloc] initWithImActorModelEntityPeerTypeEnum:ImActorModelEntityPeerTypeEnum_get_GROUP() withInt:id_];
    case 2:
    return [[ImActorModelEntityPeer alloc] initWithImActorModelEntityPeerTypeEnum:ImActorModelEntityPeerTypeEnum_get_EMAIL() withInt:id_];
  }
}

ImActorModelEntityPeer *ImActorModelEntityPeer_userWithInt_(jint uid) {
  ImActorModelEntityPeer_init();
  return [[ImActorModelEntityPeer alloc] initWithImActorModelEntityPeerTypeEnum:ImActorModelEntityPeerTypeEnum_get_PRIVATE() withInt:uid];
}

ImActorModelEntityPeer *ImActorModelEntityPeer_groupWithInt_(jint gid) {
  ImActorModelEntityPeer_init();
  return [[ImActorModelEntityPeer alloc] initWithImActorModelEntityPeerTypeEnum:ImActorModelEntityPeerTypeEnum_get_GROUP() withInt:gid];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityPeer)
