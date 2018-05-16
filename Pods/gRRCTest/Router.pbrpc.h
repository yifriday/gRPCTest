#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Router.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

#if defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) && GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class HeartbeatRequest;
  @class HeartbeatResponse;
#else
#endif

@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Data <NSObject>

#pragma mark Heartbeat(HeartbeatRequest) returns (HeartbeatResponse)

/**
 * 心跳包(测试用)
 */
- (void)heartbeatWithRequest:(HeartbeatRequest *)request handler:(void(^)(HeartbeatResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 心跳包(测试用)
 */
- (GRPCProtoCall *)RPCToHeartbeatWithRequest:(HeartbeatRequest *)request handler:(void(^)(HeartbeatResponse *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Data : GRPCProtoService<Data>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

