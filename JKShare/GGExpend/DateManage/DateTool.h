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
+ (NSString *)sendTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime;
- (NSString *)cacheTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime;

/**
 *  获取当前时间的格式串
 *
 *  @return 
 */
+ (NSString *)sendTheTimeStrAtNow:(NSString *)fromatStr;
- (NSString *)cacheTheTimeStrAtNow:(NSString *)fromatStr;

/**
 *  毫秒转年月日
 *
 *  @param theSecond
 *
 *  @return 
 */
+ (NSString *)sendTheTimeStrWithTheSecond:(NSNumber *)theSecond WithFormatStr:(NSString *)formatStr;
- (NSString *)cacheTheTimeStrWithTheSecond:(NSNumber *)theSecond WithFormatStr:(NSString *)formatStr;

/**
 *  判断是否为新(24小时)
 */
+ (BOOL)sendTheBoolOfNewWithTheSecond:(NSNumber *)theSecond;
- (BOOL)cacheTheBoolOfNewWithTheSecond:(NSNumber *)theSecond;

/**
 *  返回age
 */
+ (NSString *)sendTheAgeStrWithTheSecond:(NSNumber *)theSecond;
- (NSString *)cacheTheAgeStrWithTheSecond:(NSNumber *)theSecond;


/**
 *  获取年月日星期
 */
+ (DateModel *)sendTheDateInfoByNow;



@end
