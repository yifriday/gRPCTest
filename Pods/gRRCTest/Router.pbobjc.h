// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: router.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - RouterRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface RouterRoot : GPBRootObject
@end

#pragma mark - HeartbeatRequest

typedef GPB_ENUM(HeartbeatRequest_FieldNumber) {
  HeartbeatRequest_FieldNumber_RandId = 1,
  HeartbeatRequest_FieldNumber_CurrTimestamp = 2,
};

@interface HeartbeatRequest : GPBMessage

/** 随机字符串 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *randId;

@property(nonatomic, readwrite) int64_t currTimestamp;

@end

#pragma mark - HeartbeatResponse

typedef GPB_ENUM(HeartbeatResponse_FieldNumber) {
  HeartbeatResponse_FieldNumber_ResultCode = 1,
  HeartbeatResponse_FieldNumber_RandId = 2,
  HeartbeatResponse_FieldNumber_CurrTimestamp = 3,
};

@interface HeartbeatResponse : GPBMessage

@property(nonatomic, readwrite) int32_t resultCode;

/** 原样返回 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *randId;

@property(nonatomic, readwrite) int64_t currTimestamp;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
