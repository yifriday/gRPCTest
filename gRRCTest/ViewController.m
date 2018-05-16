//
//  ViewController.m
//  gRRCTest
//
//  Created by EkiSong on 2018/5/10.
//  Copyright © 2018年 EkiSong. All rights reserved.
//

#import "ViewController.h"
#import <GRPCClient/GRPCCall+Tests.h>
#import <gRRCTest/Router.pbrpc.h>
@interface ViewController ()
@property (nonatomic, strong)Data *service;
@end

static NSString * const kHostAddress = @"115.29.202.161:21832";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //链接到相应服务端地址
    [GRPCCall useInsecureConnectionsForHost:kHostAddress];
    //建立服务
    self.service = [[Data alloc] initWithHost:kHostAddress];
    //建立请求
    HeartbeatRequest *requset = [[HeartbeatRequest alloc]init];
    requset.randId = @"10";
    requset.currTimestamp = [[NSDate date]timeIntervalSince1970];
    //发送请求
    [self.service heartbeatWithRequest:requset handler:^(HeartbeatResponse * _Nullable response, NSError * _Nullable error) {
        //请求回调

    }];
}

@end
