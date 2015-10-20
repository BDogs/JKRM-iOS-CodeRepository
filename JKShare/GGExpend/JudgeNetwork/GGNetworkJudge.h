//
//  GGNetworkJudge.h
//  新闻咨询
//
//  Created by MacBook on 15/5/12.
//  Copyright (c) 2015年 xinlong.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworkReachabilityManager.h"
#import "Singleton.h"

@interface GGNetworkJudge : NSObject

singleton_interface(GGNetworkJudge);


//监测网络状态
- (void)startNetworkStatus;

/**
 *  是否有网
 */
@property (nonatomic,assign) BOOL shouldHaveNet;


@end
