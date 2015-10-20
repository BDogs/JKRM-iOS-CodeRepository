//
//  Header.h
//  MVVMTest
//
//  Created by 王立广 on 15/8/18.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#ifndef MVVMTest_Header_h
#define MVVMTest_Header_h

/**
 *  域名
 */
#define kMainDomin @"http://boss.kingvic.cn/api/app"


/**
 *  资讯接口集合
 */
#define informationHome @"informationHome" //资讯接口



/**
 *  大赛接口集合
 */














/**
 *  拼接接口
 */
#define kCombineRequest(interface) [NSString stringWithFormat:@"%@/%@",kMainDomin,interface]





#endif
