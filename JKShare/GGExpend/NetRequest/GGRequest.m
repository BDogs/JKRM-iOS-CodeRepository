//
//  GGRequest.m
//  新闻咨询
//
//  Created by MacBook on 15/4/14.
//  Copyright (c) 2015年 xinlong.wang. All rights reserved.
//

#import "GGRequest.h"

@implementation GGRequest

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
+ (void)sendGetOrPostRequest:(NSString *)url param:(NSMutableDictionary *)param requestStyle:(NSInteger)requestStyle setReturnType:(NSInteger)serializer success:(void (^)(id data))success
                   failure:(void (^)(NSError *error))failure
{
    
    
    // 创建请求 管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // 设置序列化器
    switch(serializer)
    {
        case 100:
        {
           // manager.requestSerializer = [AFJSONRequestSerializer serializer];
            [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];//默认(返回的是json并自动解析成数组或字典)
        }break;
        case 101:
        {
  
            [manager setResponseSerializer:[AFXMLParserResponseSerializer serializer]];//返回的是xml，afn不支持xml解析
        }break;
        case 102:
        {
           // manager.requestSerializer = [AFHTTPRequestSerializer serializer];
            [manager setResponseSerializer:[AFHTTPResponseSerializer serializer]];//返回的是data
            
        }break;
    }

    // 3.发送请求
    if(requestStyle == 200)
    {
        [manager POST:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject)
        {
          DLog(@"请求成功,返回的数据类型==%@",[responseObject class]);
           success(responseObject);
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error)
        {
            DLog(@"请求失败==%@",error);
            failure(error);
    
        }];
        
    }
    else if(requestStyle == 201)
    {
        [manager GET:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
            
            DLog(@"请求成功,返回的数据类型==%@",[responseObject class]);

            DLog(@"%@", responseObject);

            success(responseObject);
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error)
         {
             DLog(@"请求失败==%@",error);
             failure(error);
             
         }];
        
     }
}

@end
