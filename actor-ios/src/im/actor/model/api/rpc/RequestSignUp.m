//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestSignUp.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSignUp () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  NSString *name_;
  IOSByteArray *publicKey_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
  jboolean isSilent__;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, publicKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, appKey_, NSString *)

@implementation ImActorModelApiRpcRequestSignUp

+ (ImActorModelApiRpcRequestSignUp *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
                withNSString:(NSString *)name
               withByteArray:(IOSByteArray *)publicKey
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey
                 withBoolean:(jboolean)isSilent {
  if (self = [super init]) {
    self->phoneNumber_ = phoneNumber;
    self->smsHash_ = smsHash;
    self->smsCode_ = smsCode;
    self->name_ = name;
    self->publicKey_ = publicKey;
    self->deviceHash_ = deviceHash;
    self->deviceTitle_ = deviceTitle;
    self->appId_ = appId;
    self->appKey_ = appKey;
    self->isSilent__ = isSilent;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (NSString *)getSmsCode {
  return self->smsCode_;
}

- (NSString *)getName {
  return self->name_;
}

- (IOSByteArray *)getPublicKey {
  return self->publicKey_;
}

- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getAppKey {
  return self->appKey_;
}

- (jboolean)isSilent {
  return self->isSilent__;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->phoneNumber_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->name_ = [values getStringWithInt:4];
  self->publicKey_ = [values getBytesWithInt:6];
  self->deviceHash_ = [values getBytesWithInt:7];
  self->deviceTitle_ = [values getStringWithInt:8];
  self->appId_ = [values getIntWithInt:9];
  self->appKey_ = [values getStringWithInt:10];
  self->isSilent__ = [values getBoolWithInt:11];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->name_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:4 withNSString:self->name_];
  if (self->publicKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:6 withByteArray:self->publicKey_];
  if (self->deviceHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:7 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:8 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:9 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:10 withNSString:self->appKey_];
  [writer writeBoolWithInt:11 withBoolean:self->isSilent__];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSignUp_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSignUp *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  other->smsHash_ = smsHash_;
  other->smsCode_ = smsCode_;
  other->name_ = name_;
  other->publicKey_ = publicKey_;
  other->deviceHash_ = deviceHash_;
  other->deviceTitle_ = deviceTitle_;
  other->appId_ = appId_;
  other->appKey_ = appKey_;
  other->isSilent__ = isSilent__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestSignUp;", 0x9, "Ljava.io.IOException;" },
    { "initWithLong:withNSString:withNSString:withNSString:withByteArray:withByteArray:withNSString:withInt:withNSString:withBoolean:", "RequestSignUp", NULL, 0x1, NULL },
    { "init", "RequestSignUp", NULL, 0x1, NULL },
    { "getPhoneNumber", NULL, "J", 0x1, NULL },
    { "getSmsHash", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getSmsCode", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPublicKey", NULL, "[B", 0x1, NULL },
    { "getDeviceHash", NULL, "[B", 0x1, NULL },
    { "getDeviceTitle", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAppId", NULL, "I", 0x1, NULL },
    { "getAppKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "isSilent", NULL, "Z", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestSignUp_HEADER },
    { "phoneNumber_", NULL, 0x2, "J", NULL,  },
    { "smsHash_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "smsCode_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "publicKey_", NULL, 0x2, "[B", NULL,  },
    { "deviceHash_", NULL, 0x2, "[B", NULL,  },
    { "deviceTitle_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "appId_", NULL, 0x2, "I", NULL,  },
    { "appKey_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "isSilent__", "isSilent", 0x2, "Z", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseAuth;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestSignUp = { 1, "RequestSignUp", "im.actor.model.api.rpc", NULL, 0x1, 16, methods, 11, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestSignUp;
}

@end

ImActorModelApiRpcRequestSignUp *ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSignUp_init();
  return ((ImActorModelApiRpcRequestSignUp *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiRpcRequestSignUp alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSignUp)
