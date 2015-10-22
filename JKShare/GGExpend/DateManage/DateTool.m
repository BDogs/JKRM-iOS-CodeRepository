//
//  DateTool.m
//  RunHelper
//
//  Created by B.Dog on 14/12/12.
//  Copyright (c) 2014年 jkrm. All rights reserved.
//

#import "DateTool.h"

@implementation DateTool

- (NSString *)cacheTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime
{
    NSTimeInterval theTimeInterval = [theTime doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:theTimeInterval];//发布时间
    
    NSDate *now = [NSDate date];//现在时间
    
    // 比较帖子发布时间和当前时间
    NSTimeInterval interval = [now timeIntervalSinceDate:date];//发布时间到现在间隔多长时间，用timeIntervalSinceDate
    NSString *format;
    if (interval <= 60) {
        format = @"刚刚";
    } else if(interval <= 60*60){
        format = [NSString stringWithFormat:@"%.f分钟前", interval/60];
    } else if(interval <= 60*60*24){
        format = [NSString stringWithFormat:@"%.f小时前", interval/3600];
    } else if (interval <= 60*60*24*7){
        format = [NSString stringWithFormat:@"%d天前", (int)interval/(60*60*24)];
    } else if (interval > 60*60*24*7 && interval <= 60*60*24*30 ){
        format = [NSString stringWithFormat:@"%d周前", (int)interval/(60*60*24*7)];
    }else if(interval > 60*60*24*30 && interval < 60*60*24*30*12){
        format = [NSString stringWithFormat:@"%d月前", (int)interval/(60*60*24*30)];
    } else if (interval > 60*60*24*30*12) {
        format = [NSString stringWithFormat:@"%d年前", (int)interval/60*60*24*30*12];
    }

    return format;
}

+ (NSString *)sendTheCurentTimeFromNowWithTheTime:(NSNumber *)theTime
{
    DateTool *dTool = [[DateTool alloc] init];
    
    return [dTool cacheTheCurentTimeFromNowWithTheTime:theTime];
}

- (NSString *)cacheTheTimeStrAtNow:(NSString *)fromatStr
{
    NSDate *nowDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:fromatStr];
    NSString *result = [formatter stringFromDate:nowDate];
    return result;
    
}

+ (NSString *)sendTheTimeStrAtNow:(NSString *)fromatStr
{
    DateTool *dTool = [[DateTool alloc] init];
    return [dTool cacheTheTimeStrAtNow:fromatStr];
}

- (NSString *)cacheTheTimeStrWithTheSecond:(NSNumber *)theSecond WithFormatStr:(NSString *)formatStr
{
    NSTimeInterval theTimeInterval = [theSecond doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:theTimeInterval];//发布时间
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatStr];
    NSString *result = [formatter stringFromDate:date];
    return result;
}

+ (NSString *)sendTheTimeStrWithTheSecond:(NSNumber *)theSecond WithFormatStr:(NSString *)formatStr
{
    DateTool *dTool = [[DateTool alloc] init];
    return [dTool cacheTheTimeStrWithTheSecond:theSecond WithFormatStr:formatStr];
}

- (BOOL)cacheTheBoolOfNewWithTheSecond:(NSNumber *)theSecond
{
    NSTimeInterval theTimeInterval = [theSecond doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:theTimeInterval];//发布时间
 
    NSTimeInterval currentTime = [date timeIntervalSinceNow];
    if ((-currentTime) < 24 * 60 * 60) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)sendTheBoolOfNewWithTheSecond:(NSNumber *)theSecond
{
    DateTool *dTool = [[DateTool alloc] init];
    return [dTool cacheTheBoolOfNewWithTheSecond:theSecond];
}

- (NSString *)cacheTheAgeStrWithTheSecond:(NSNumber *)theSecond
{
    NSDate *nowDate = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy"];
    NSString *nowYear = [formatter stringFromDate:nowDate];
    
    NSTimeInterval theTimeInterval = [theSecond doubleValue] / 1000;
    NSDate *birthDate = [NSDate dateWithTimeIntervalSince1970:theTimeInterval];//birthDay
    NSString *birthYear = [formatter stringFromDate:birthDate];
    int resultNum = nowYear.intValue - birthYear.intValue;
    NSString *resultStr = [NSString stringWithFormat:@"你今年%d岁", resultNum];
    
    return resultStr;
}

+ (NSString *)sendTheAgeStrWithTheSecond:(NSNumber *)theSecond
{
    DateTool *dTool = [[DateTool alloc] init];
    return [dTool cacheTheAgeStrWithTheSecond:theSecond];
}

+ (DateModel *)sendTheDateInfoByNow
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDate *now = [NSDate date];;
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday |
    NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *comps = [calendar components:unitFlags fromDate:now];
    
    DateModel *dModel = [[DateModel alloc] init];
    dModel.weekDay = comps.weekday;
    dModel.month = comps.month;
    dModel.day = comps.day;
  
    
    switch (comps.weekday) {
        case 1:
            dModel.weekDayStr = @"星期日";
            break;
            
        case 2:
            dModel.weekDayStr = @"星期一";
            break;
            
        case 3:
            dModel.weekDayStr = @"星期二";
            break;
            
        case 4:
            dModel.weekDayStr = @"星期三";
            break;
            
        case 5:
            dModel.weekDayStr = @"星期四";
            break;
            
        case 6:
            dModel.weekDayStr = @"星期五";
            break;
            
        case 7:
            dModel.weekDayStr = @"星期六";
            break;
            
        default:
            break;
    }
    
    
    return dModel;
    
}



@end
