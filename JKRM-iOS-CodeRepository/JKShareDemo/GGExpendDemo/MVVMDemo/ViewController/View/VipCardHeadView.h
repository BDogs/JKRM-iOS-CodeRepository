//
//  VipCardHeadView.h
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VipCardHeadView : UIView

/**
 *  会员卡
 */
@property (nonatomic, retain) UILabel *vipCardNumLabel;

/**
 *  剩余币数
 */
@property (nonatomic, retain) UILabel *vipCardSurplusLabel;

/**
 *  是否挂失
 */
@property (nonatomic, retain) UILabel *vipCardShouldLostLabel;



@end
