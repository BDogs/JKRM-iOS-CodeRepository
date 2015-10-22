//
//  VIpCardHomePageViewController.h
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VipCardViewModel.h"
#import "VipCardModel.h"
@interface VIpCardHomePageViewController : UIViewController

/**
 *  逻辑层ViewModel
 */
@property (nonatomic,retain) VipCardViewModel *vipCardViewModel;

/**
 *  会员卡model
 */
@property (nonatomic, retain) VipCardModel *vipCardModel;


@end
