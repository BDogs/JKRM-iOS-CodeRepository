//
//  DateTool.h
//  RunHelper
//
//  Created by B.Dog on 14/12/12.
//  Copyright (c) 2014年 jkrm. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DateModel.h"


@interface DateTool : NSObject
/**
 *  计算发布时间
 *
 *  @param theTime
 *
 *  @return
 */
- (NSString *)cacheTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime;
+ (NSString *)sendTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime;
/**
 *  获取当前时间的格式串
 *
 *  @return 
 */
- (NSString *)cacheTheTimeStrAtNow;
+ (NSString *)sendTheTimeStrAtNow;
/**
 *  毫秒转年月日
 *
 *  @param theSecond
 *
 *  @return 
 */
- (NSString *)cacheTheTimeStrWithTheSecond:(NSNumber *)theSecond;
+ (NSString *)sendTheTimeStrWithTheSecond:(NSNumber *)theSecond;
/**
 *  判断是否为新(24小时)
 */
- (BOOL)cacheTheBoolOfNewWithTheSecond:(NSNumber *)theSecond;
+ (BOOL)sendTheBoolOfNewWithTheSecond:(NSNumber *)theSecond;
/**
 *  返回age
 */

- (NSString *)cacheTheAgeStrWithTheSecond:(NSNumber *)theSecond;
+ (NSString *)sendTheAgeStrWithTheSecond:(NSNumber *)theSecond;

/**
 *  获取年月日星期
 */
+ (DateModel *)sendTheDateInfoByNow;



@end
