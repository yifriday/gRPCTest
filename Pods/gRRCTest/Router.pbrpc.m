#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Router.pbrpc.h"
#import "Router.pbobjc.h"
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>


@implementation Data

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  self = [super initWithHost:host
                 packageName:@"proto"
                 serviceName:@"Data"];
  return self;
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

#pragma mark - Method Implementations

#pragma mark Heartbeat(HeartbeatRequest) returns (HeartbeatResponse)

/**
 * 心跳包(测试用)
 */
- (void)heartbeatWithRequest:(HeartbeatRequest *)request handler:(void(^)(HeartbeatResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToHeartbeatWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 心跳包(测试用)
 */
- (GRPCProtoCall *)RPCToHeartbeatWithRequest:(HeartbeatRequest *)request handler:(void(^)(HeartbeatResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Heartbeat"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[HeartbeatResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
#endif
