//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/RpcException.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/RpcException.h"

@interface AMRpcException () {
 @public
  NSString *tag_;
  jint code_;
  NSString *message_;
  jboolean canTryAgain_;
  IOSByteArray *relatedData_;
}
@end

J2OBJC_FIELD_SETTER(AMRpcException, tag_, NSString *)
J2OBJC_FIELD_SETTER(AMRpcException, message_, NSString *)
J2OBJC_FIELD_SETTER(AMRpcException, relatedData_, IOSByteArray *)

@implementation AMRpcException

- (instancetype)initWithNSString:(NSString *)tag
                         withInt:(jint)code
                    withNSString:(NSString *)message
                     withBoolean:(jboolean)canTryAgain
                   withByteArray:(IOSByteArray *)relatedData {
  if (self = [super init]) {
    self->tag_ = tag;
    self->code_ = code;
    self->message_ = message;
    self->canTryAgain_ = canTryAgain;
    self->relatedData_ = relatedData;
  }
  return self;
}

- (jboolean)isCanTryAgain {
  return canTryAgain_;
}

- (IOSByteArray *)getRelatedData {
  return relatedData_;
}

- (NSString *)getTag {
  return tag_;
}

- (jint)getCode {
  return code_;
}

- (NSString *)getMessage {
  return message_;
}

- (void)copyAllFieldsTo:(AMRpcException *)other {
  [super copyAllFieldsTo:other];
  other->tag_ = tag_;
  other->code_ = code_;
  other->message_ = message_;
  other->canTryAgain_ = canTryAgain_;
  other->relatedData_ = relatedData_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withNSString:withBoolean:withByteArray:", "RpcException", NULL, 0x1, NULL },
    { "isCanTryAgain", NULL, "Z", 0x1, NULL },
    { "getRelatedData", NULL, "[B", 0x1, NULL },
    { "getTag", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getCode", NULL, "I", 0x1, NULL },
    { "getMessage", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tag_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "code_", NULL, 0x2, "I", NULL,  },
    { "message_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "canTryAgain_", NULL, 0x2, "Z", NULL,  },
    { "relatedData_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _AMRpcException = { 1, "RpcException", "im.actor.model.network", NULL, 0x1, 6, methods, 5, fields, 0, NULL};
  return &_AMRpcException;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMRpcException)
