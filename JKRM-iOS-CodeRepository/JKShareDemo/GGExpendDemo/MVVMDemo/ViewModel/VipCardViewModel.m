//
//  VipCardViewModel.m
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "VipCardViewModel.h"
#import "VipCardModel.h"




@implementation VipCardViewModel

//获取会员卡数据
- (void)fetchVipCardDataWtihUserId:(NSString *)userId
{
//    {
//    accountNumber: "未绑定",
//    binding: 1,
//    payedYearMoney: 1,
//    status: 0,
//    tokenCount: 620
//    }
    

    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    dict[@"userId"] = userId;
    
    [GGRequest sendGetOrPostRequest:kCombineRequest(vipCardInfo) param:dict requestStyle:kPOST setReturnType:kJSON success:^(id data) {
        
        VipCardModel *model = [[VipCardModel alloc]init];
        
        model.accountNumber = data[@"accountNumber"];
        model.binding = data[@"binding"];
        model.tokenCount = data[@"tokenCount"];
        model.status = data[@"status"];
        
        self.successBlock(model);
        
    } failure:^(NSError *error) {
        
        self.failureBlock(error);
        
    }];
        
}

@end