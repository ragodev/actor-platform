//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/ResponseLoadHistory.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/HistoryMessage.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseLoadHistory.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseLoadHistory () {
 @public
  id<JavaUtilList> history_;
  id<JavaUtilList> users_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadHistory, history_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseLoadHistory, users_, id<JavaUtilList>)

@implementation ImActorModelApiRpcResponseLoadHistory

+ (ImActorModelApiRpcResponseLoadHistory *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseLoadHistory_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)history
                    withJavaUtilList:(id<JavaUtilList>)users {
  if (self = [super init]) {
    self->history_ = history;
    self->users_ = users;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getHistory {
  return self->history_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  id<JavaUtilList> _history = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_history addWithId:[[ImActorModelApiHistoryMessage alloc] init]];
  }
  self->history_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_history];
  id<JavaUtilList> _users = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:2]; i++) {
    [_users addWithId:[[ImActorModelApiUser alloc] init]];
  }
  self->users_ = [values getRepeatedObjWithInt:2 withJavaUtilList:_users];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->history_];
  [writer writeRepeatedObjWithInt:2 withJavaUtilList:self->users_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseLoadHistory_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseLoadHistory *)other {
  [super copyAllFieldsTo:other];
  other->history_ = history_;
  other->users_ = users_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.ResponseLoadHistory;", 0x9, "Ljava.io.IOException;" },
    { "initWithJavaUtilList:withJavaUtilList:", "ResponseLoadHistory", NULL, 0x1, NULL },
    { "init", "ResponseLoadHistory", NULL, 0x1, NULL },
    { "getHistory", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcResponseLoadHistory_HEADER },
    { "history_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiRpcResponseLoadHistory = { 1, "ResponseLoadHistory", "im.actor.model.api.rpc", NULL, 0x1, 8, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiRpcResponseLoadHistory;
}

@end

ImActorModelApiRpcResponseLoadHistory *ImActorModelApiRpcResponseLoadHistory_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseLoadHistory_init();
  return ((ImActorModelApiRpcResponseLoadHistory *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiRpcResponseLoadHistory alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseLoadHistory)
