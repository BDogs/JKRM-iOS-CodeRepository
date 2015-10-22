//
//  GGRequest.h
//  新闻咨询
//
//  Created by MacBook on 15/4/14.
//  Copyright (c) 2015年 xinlong.wang. All rights reserved.
//


#import <Foundation/Foundation.h>

#define kJSON 100
#define kXML  101
#define kDATA 102


#define kPOST 200
#define kGET  201


@interface GGRequest : NSObject
/**
 *  网络请求方法
 *
 *  @param url          将要访问的链接
 *  @param param        传入的参数
 *  @param requestStyle 请求方式
 *  @param serializer   数据返回形式
 *  @param success      请求成功后调用
 *  @param failure      请求失败后调用
 */

+ (void)sendGetOrPostRequest:(NSString *)url param:(NSMutableDictionary *)param requestStyle:(NSInteger)requestStyle setReturnType:(NSInteger)serializer success:(void (^)(id data))success failure:(void (^)(NSError *error))failure;

@end
