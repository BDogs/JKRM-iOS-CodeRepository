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
#define kMainDomin @"http://boss.kingvic.cn/api/app/"



#define vipCardInfo   @"mzone" //会员卡信息


/**
 *  拼接接口
 */
#define kCombineRequest(interface) [NSString stringWithFormat:@"%@/%@",kMainDomin,interface]

#endif
