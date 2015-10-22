//
//  VipCardModel.h
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VipCardModel : NSObject

/**
 *  会员卡号
 */
@property (nonatomic, copy) NSString *accountNumber;

/**
 *  是否绑定 1是未绑定 2是已绑定
 */
@property (nonatomic, retain) NSNumber *binding;

/**
 *  剩余币数
 */
@property (nonatomic, retain) NSNumber *tokenCount;


/**
 *  是否挂失 0是未挂失
 */
@property (nonatomic, retain) NSNumber *status;

@end
