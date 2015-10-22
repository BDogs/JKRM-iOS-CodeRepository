//
//  VipCardHeadView.m
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "VipCardHeadView.h"


@implementation VipCardHeadView


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //布局UI
        [self layoutUI];
    }
    return self;
}

#pragma mark 布局UI
- (void)layoutUI
{
    UIImageView *backImage = [[UIImageView alloc]init];
    
    backImage.frame = CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height*0.3);
    
    backImage.image = [UIImage imageNamed:@"vipNewBc.png"];
    
    [self addSubview:backImage];
    
    
    //会员卡号提示框
    UILabel *fixNumLabel = [[UILabel alloc]initWithFrame:CGRectMake(20,(backImage.height-23*3-30)/2,100, 23)];
    
    fixNumLabel.text = @"会员卡号: ";
    fixNumLabel.textColor = [UIColor whiteColor];
    fixNumLabel.backgroundColor = [UIColor clearColor];
    fixNumLabel.font = [UIFont systemFontOfSize:19];
    [self addSubview:fixNumLabel];
    
    
    //会员卡号数据
    self.vipCardNumLabel = [[UILabel alloc]initWithFrame:CGRectMake(fixNumLabel.right+10,fixNumLabel.top , Main_Screen_Width-fixNumLabel.right-30, 23)];
    self.vipCardNumLabel.textColor = [UIColor whiteColor];
    self.vipCardNumLabel.backgroundColor = [UIColor clearColor];
    self.vipCardNumLabel.text = @"数据请求中...";
    self.vipCardNumLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:self.vipCardNumLabel];
    

    
    //文字剩余币数提示框
    UILabel *fixSurplusLabel = [[UILabel alloc]initWithFrame:CGRectMake(20,fixNumLabel.bottom+15,100, 23)];
    fixSurplusLabel.text = @"剩余币数: ";
    fixSurplusLabel.textColor = [UIColor whiteColor];
    fixSurplusLabel.backgroundColor = [UIColor clearColor];
    fixSurplusLabel.font = [UIFont systemFontOfSize:19];
    [self addSubview:fixSurplusLabel];
    
    //文字剩余币数数据
    self.vipCardSurplusLabel = [[UILabel alloc]initWithFrame:CGRectMake(fixSurplusLabel.right+10,fixSurplusLabel.top , Main_Screen_Width-fixSurplusLabel.right-30, 23)];
    self.vipCardSurplusLabel.text = @"数据请求中...";
    self.vipCardSurplusLabel.textColor = [UIColor whiteColor];
    self.vipCardSurplusLabel.backgroundColor = [UIColor clearColor];
    self.vipCardSurplusLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:self.vipCardSurplusLabel];

    
    //是否挂失提示框
    UILabel *fixLostLabel = [[UILabel alloc]initWithFrame:CGRectMake(20,fixSurplusLabel.bottom+15,100, 23)];
    fixLostLabel.text = @"是否挂失: ";
    fixLostLabel.textColor = [UIColor whiteColor];
    fixLostLabel.backgroundColor = [UIColor clearColor];
    fixLostLabel.font = [UIFont systemFontOfSize:19];
    [self addSubview:fixLostLabel];
    
    
    //是否挂失数据
    self.vipCardShouldLostLabel = [[UILabel alloc]initWithFrame:CGRectMake(fixLostLabel.right+10,fixLostLabel.top , Main_Screen_Width-fixLostLabel.right-30, 23)];
    self.vipCardShouldLostLabel.textColor = [UIColor whiteColor];
    self.vipCardShouldLostLabel.text = @"数据请求中...";
    self.vipCardShouldLostLabel.backgroundColor = [UIColor clearColor];
    self.vipCardShouldLostLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:self.vipCardShouldLostLabel];
}

@end
