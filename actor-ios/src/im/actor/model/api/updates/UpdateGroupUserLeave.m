//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateGroupUserLeave.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupUserLeave.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupUserLeave () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jlong date_;
}
@end

@implementation ImActorModelApiUpdatesUpdateGroupUserLeave

+ (ImActorModelApiUpdatesUpdateGroupUserLeave *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupUserLeave_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                   withLong:(jlong)date {
  if (self = [super init]) {
    self->groupId_ = groupId;
    self->rid_ = rid;
    self->uid_ = uid;
    self->date_ = date;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->groupId_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:4];
  self->uid_ = [values getIntWithInt:2];
  self->date_ = [values getLongWithInt:3];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeLongWithInt:3 withLong:self->date_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateGroupUserLeave_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateGroupUserLeave *)other {
  [super copyAllFieldsTo:other];
  other->groupId_ = groupId_;
  other->rid_ = rid_;
  other->uid_ = uid_;
  other->date_ = date_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateGroupUserLeave;", 0x9, "Ljava.io.IOException;" },
    { "initWithInt:withLong:withInt:withLong:", "UpdateGroupUserLeave", NULL, 0x1, NULL },
    { "init", "UpdateGroupUserLeave", NULL, 0x1, NULL },
    { "getGroupId", NULL, "I", 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "getUid", NULL, "I", 0x1, NULL },
    { "getDate", NULL, "J", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateGroupUserLeave_HEADER },
    { "groupId_", NULL, 0x2, "I", NULL,  },
    { "rid_", NULL, 0x2, "J", NULL,  },
    { "uid_", NULL, 0x2, "I", NULL,  },
    { "date_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateGroupUserLeave = { 1, "UpdateGroupUserLeave", "im.actor.model.api.updates", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateGroupUserLeave;
}

@end

ImActorModelApiUpdatesUpdateGroupUserLeave *ImActorModelApiUpdatesUpdateGroupUserLeave_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupUserLeave_init();
  return ((ImActorModelApiUpdatesUpdateGroupUserLeave *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateGroupUserLeave alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupUserLeave)
