//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestDeleteMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestDeleteMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestDeleteMessage () {
 @public
  ImActorModelApiOutPeer *peer_;
  id<JavaUtilList> rids_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestDeleteMessage, peer_, ImActorModelApiOutPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestDeleteMessage, rids_, id<JavaUtilList>)

@implementation ImActorModelApiRpcRequestDeleteMessage

+ (ImActorModelApiRpcRequestDeleteMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestDeleteMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
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

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (id<JavaUtilList>)getRids {
  return self->rids_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->peer_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getObjWithInt:1 withImActorModelDroidkitBserBserObject:[[ImActorModelApiOutPeer alloc] init]];
  self->rids_ = [values getRepeatedLongWithInt:3];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withImActorModelDroidkitBserBserObject:self->peer_];
  [writer writeRepeatedLongWithInt:3 withJavaUtilList:self->rids_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestDeleteMessage_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestDeleteMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->rids_ = rids_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestDeleteMessage;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelApiOutPeer:withJavaUtilList:", "RequestDeleteMessage", NULL, 0x1, NULL },
    { "init", "RequestDeleteMessage", NULL, 0x1, NULL },
    { "getPeer", NULL, "Lim.actor.model.api.OutPeer;", 0x1, NULL },
    { "getRids", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestDeleteMessage_HEADER },
    { "peer_", NULL, 0x2, "Lim.actor.model.api.OutPeer;", NULL,  },
    { "rids_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseVoid;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestDeleteMessage = { 1, "RequestDeleteMessage", "im.actor.model.api.rpc", NULL, 0x1, 8, methods, 3, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestDeleteMessage;
}

@end

ImActorModelApiRpcRequestDeleteMessage *ImActorModelApiRpcRequestDeleteMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestDeleteMessage_init();
  return ((ImActorModelApiRpcRequestDeleteMessage *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiRpcRequestDeleteMessage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestDeleteMessage)
