//
//  GGNetworkJudge.m
//  新闻咨询
//
//  Created by MacBook on 15/5/12.
//  Copyright (c) 2015年 xinlong.wang. All rights reserved.
//

#import "GGNetworkJudge.h"
#import <UIKit/UIKit.h>

@implementation GGNetworkJudge
singleton_implementation(GGNetworkJudge);

#pragma mark - 私有方法
#pragma mark 网络状态变化提示
-(void)alert:(NSString *)message{
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:@"系统信息" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alertView show];
}

#pragma mark 网络状态监测
-(void)startNetworkStatus{
    
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    //开始监控
    [manager startMonitoring];
    
    
    // 检测网络连接的单例,网络变化时的回调方法
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        switch (status) {
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //[self alert:@"2G/3G/4G Connection."];
                //                [self alert:@"网络已连接"];
                _shouldHaveNet = YES;
                
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                // [self alert:@"WiFi Connection."];
                
                //                [self alert:@"网络已连接"];
                _shouldHaveNet = YES;
                break;
            case AFNetworkReachabilityStatusNotReachable:
                //  [self alert:@"Network not found."];
                [self alert:@"网络已断开，请检查网络设置"];
                _shouldHaveNet = NO;
                
                break;
                
            default:
                // [self alert:@"Unknown."];
                [self alert:@"网络未知错误"];
                _shouldHaveNet = NO;
                
                break;
                
        }
        
    }];
    
}


@end
