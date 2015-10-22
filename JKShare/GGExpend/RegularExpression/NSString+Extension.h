//
//  NSString+Extension.h
//  正则表达式
//
//  Created by apple on 14/11/15.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/**
 *  判断是否是QQ号
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isQQ;

/**
 *  判断是否手机号
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isPhoneNumber;

/**
 *  判断是否是IP地址
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isIPAddress;

/**
 *  判断是否是指定服务器里的图片
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isPicture;


/**
 *  判断是否是16位数字
 *
 *  @return 符合要求返回YES
 */
- (BOOL)is16Num;

/**
 *  判断密码是不是数字和字母
 *
 *  @param passWord 传进来的字符
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isPassWord;

/**
 *  判断邮箱是否正确
 *
 *  @param email 邮箱字符串
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isEmail;

/**
 *  判断身份证是否正确
 *
 *  @param identityCard 身份证字符串
 *
 *  @return 符合要求返回YES
 */
- (BOOL)isIdentityCard;
- (BOOL)isWWW;
@end
