//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/FastThumb.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiFastThumb () {
 @public
  jint w_;
  jint h_;
  IOSByteArray *thumb_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiFastThumb, thumb_, IOSByteArray *)

@implementation ImActorModelApiFastThumb

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h
              withByteArray:(IOSByteArray *)thumb {
  if (self = [super init]) {
    self->w_ = w;
    self->h_ = h;
    self->thumb_ = thumb;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getW {
  return self->w_;
}

- (jint)getH {
  return self->h_;
}

- (IOSByteArray *)getThumb {
  return self->thumb_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->w_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->h_ = [values getIntWithInt:2];
  self->thumb_ = [values getBytesWithInt:3];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->w_];
  [writer writeIntWithInt:2 withInt:self->h_];
  if (self->thumb_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:3 withByteArray:self->thumb_];
}

- (void)copyAllFieldsTo:(ImActorModelApiFastThumb *)other {
  [super copyAllFieldsTo:other];
  other->w_ = w_;
  other->h_ = h_;
  other->thumb_ = thumb_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withByteArray:", "FastThumb", NULL, 0x1, NULL },
    { "init", "FastThumb", NULL, 0x1, NULL },
    { "getW", NULL, "I", 0x1, NULL },
    { "getH", NULL, "I", 0x1, NULL },
    { "getThumb", NULL, "[B", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "w_", NULL, 0x2, "I", NULL,  },
    { "h_", NULL, 0x2, "I", NULL,  },
    { "thumb_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiFastThumb = { 1, "FastThumb", "im.actor.model.api", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ImActorModelApiFastThumb;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiFastThumb)
