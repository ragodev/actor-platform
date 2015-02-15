//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/VideoContent.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileSource.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityContentVideoContent () {
 @public
  jint duration_;
  jint w_;
  jint h_;
}
- (instancetype)init;
@end

@implementation ImActorModelEntityContentVideoContent

+ (ImActorModelEntityContentVideoContent *)videoFromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentVideoContent_videoFromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelEntityContentFileSource:(ImActorModelEntityContentFileSource *)location
                                               withNSString:(NSString *)mimetype
                                               withNSString:(NSString *)name
                     withImActorModelEntityContentFastThumb:(ImActorModelEntityContentFastThumb *)fastThumb
                                                    withInt:(jint)duration
                                                    withInt:(jint)w
                                                    withInt:(jint)h {
  if (self = [super initWithImActorModelEntityContentFileSource:location withNSString:mimetype withNSString:name withImActorModelEntityContentFastThumb:fastThumb]) {
    self->duration_ = duration;
    self->w_ = w;
    self->h_ = h;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getDuration {
  return duration_;
}

- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}

- (ImActorModelEntityContentAbsContent_ContentTypeEnum *)getContentType {
  return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_DOCUMENT_VIDEO();
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  [super parseWithImActorModelDroidkitBserBserValues:values];
  duration_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:10];
  w_ = [values getIntWithInt:11];
  h_ = [values getIntWithInt:12];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [super serializeWithImActorModelDroidkitBserBserWriter:writer];
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:10 withInt:duration_];
  [writer writeIntWithInt:11 withInt:w_];
  [writer writeIntWithInt:12 withInt:h_];
}

- (void)copyAllFieldsTo:(ImActorModelEntityContentVideoContent *)other {
  [super copyAllFieldsTo:other];
  other->duration_ = duration_;
  other->w_ = w_;
  other->h_ = h_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "videoFromBytesWithByteArray:", "videoFromBytes", "Lim.actor.model.entity.content.VideoContent;", 0x9, "Ljava.io.IOException;" },
    { "initWithImActorModelEntityContentFileSource:withNSString:withNSString:withImActorModelEntityContentFastThumb:withInt:withInt:withInt:", "VideoContent", NULL, 0x1, NULL },
    { "init", "VideoContent", NULL, 0x2, NULL },
    { "getDuration", NULL, "I", 0x1, NULL },
    { "getW", NULL, "I", 0x1, NULL },
    { "getH", NULL, "I", 0x1, NULL },
    { "getContentType", NULL, "Lim.actor.model.entity.content.AbsContent$ContentType;", 0x4, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "duration_", NULL, 0x2, "I", NULL,  },
    { "w_", NULL, 0x2, "I", NULL,  },
    { "h_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelEntityContentVideoContent = { 1, "VideoContent", "im.actor.model.entity.content", NULL, 0x1, 9, methods, 3, fields, 0, NULL};
  return &_ImActorModelEntityContentVideoContent;
}

@end

ImActorModelEntityContentVideoContent *ImActorModelEntityContentVideoContent_videoFromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentVideoContent_init();
  return ((ImActorModelEntityContentVideoContent *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelEntityContentVideoContent alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentVideoContent)
