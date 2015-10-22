//
//  VipCardViewModel.h
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "ViewModelClass.h"


@interface VipCardViewModel : ViewModelClass

/**
 *  请求会员卡数据
 */
- (void)fetchVipCardDataWtihUserId:(NSString *)userId;


@end