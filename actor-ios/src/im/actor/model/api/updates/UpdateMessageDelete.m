//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateMessageDelete.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageDelete.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUpdatesUpdateMessageDelete () {
 @public
  ImActorModelApiPeer *peer_;
  id<JavaUtilList> rids_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageDelete, peer_, ImActorModelApiPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageDelete, rids_, id<JavaUtilList>)

@implementation ImActorModelApiUpdatesUpdateMessageDelete

+ (ImActorModelApiUpdatesUpdateMessageDelete *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageDelete_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                           withJavaUtilList:(id<JavaUtilList>)rids {
  if (self = [super init]) {
    self->peer_ = peer;
    self->rids_ = rids;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (id<JavaUtilList>)getRids {
  return self->rids_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->peer_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withImActorModelDroidkitBserBserObject:[[ImActorModelApiPeer alloc] init]];
  self->rids_ = [values getRepeatedLongWithInt:2];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withImActorModelDroidkitBserBserObject:self->peer_];
  [writer writeRepeatedLongWithInt:2 withJavaUtilList:self->rids_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateMessageDelete_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateMessageDelete *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->rids_ = rids_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateMessageDelete;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiPeer:withJavaUtilList:", "UpdateMessageDelete", NULL, 0x1, NULL },
    { "init", "UpdateMessageDelete", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.Peer;", 0x1, NULL },
    { "getRids", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateMessageDelete_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.Peer;", NULL,  },
    { "rids_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateMessageDelete = { 1, "UpdateMessageDelete", "im.actor.model.api.updates", NULL, 0x1, 8, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateMessageDelete;
}

@end

ImActorModelApiUpdatesUpdateMessageDelete *ImActorModelApiUpdatesUpdateMessageDelete_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageDelete_init();
  return ((ImActorModelApiUpdatesUpdateMessageDelete *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateMessageDelete alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageDelete)
