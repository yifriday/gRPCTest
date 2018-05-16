// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: router.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Router.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - RouterRoot

@implementation RouterRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - RouterRoot_FileDescriptor

static GPBFileDescriptor *RouterRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"proto"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - HeartbeatRequest

@implementation HeartbeatRequest

@dynamic randId;
@dynamic currTimestamp;

typedef struct HeartbeatRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *randId;
  int64_t currTimestamp;
} HeartbeatRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "randId",
        .dataTypeSpecific.className = NULL,
        .number = HeartbeatRequest_FieldNumber_RandId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(HeartbeatRequest__storage_, randId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "currTimestamp",
        .dataTypeSpecific.className = NULL,
        .number = HeartbeatRequest_FieldNumber_CurrTimestamp,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(HeartbeatRequest__storage_, currTimestamp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[HeartbeatRequest class]
                                     rootClass:[RouterRoot class]
                                          file:RouterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(HeartbeatRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001EA\000\002M\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - HeartbeatResponse

@implementation HeartbeatResponse

@dynamic resultCode;
@dynamic randId;
@dynamic currTimestamp;

typedef struct HeartbeatResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t resultCode;
  NSString *randId;
  int64_t currTimestamp;
} HeartbeatResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "resultCode",
        .dataTypeSpecific.className = NULL,
        .number = HeartbeatResponse_FieldNumber_ResultCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(HeartbeatResponse__storage_, resultCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "randId",
        .dataTypeSpecific.className = NULL,
        .number = HeartbeatResponse_FieldNumber_RandId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(HeartbeatResponse__storage_, randId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "currTimestamp",
        .dataTypeSpecific.className = NULL,
        .number = HeartbeatResponse_FieldNumber_CurrTimestamp,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(HeartbeatResponse__storage_, currTimestamp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[HeartbeatResponse class]
                                     rootClass:[RouterRoot class]
                                          file:RouterRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(HeartbeatResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\001J\000\002EA\000\003M\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)