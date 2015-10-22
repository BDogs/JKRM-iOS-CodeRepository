//
//  GGRACViewController.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGRACViewController.h"

@interface GGRACViewController ()

@end

@implementation GGRACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"RAC Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self racDemo];
}

- (void)racDemo{
    
    //验证码textfiled
    UITextField *_securityCodeTextfiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-150)/2, 120,150, 35)];
    _securityCodeTextfiled.backgroundColor = [UIColor whiteColor];
    _securityCodeTextfiled.placeholder = @"请输入验证码";
    _securityCodeTextfiled.layer.borderWidth = 1.0;
    _securityCodeTextfiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _securityCodeTextfiled.layer.masksToBounds = YES;
    _securityCodeTextfiled.layer.cornerRadius = 5;
    
    _securityCodeTextfiled.textColor = [UIColor blackColor];
    _securityCodeTextfiled.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:_securityCodeTextfiled];
    
    
    //会员卡号textfiled
    UITextField *_vipCardNumTextfiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-150)/2,_securityCodeTextfiled.bottom+20,150, 35)];
    _vipCardNumTextfiled.placeholder = @"请输入会员卡号";
    _vipCardNumTextfiled.backgroundColor = [UIColor whiteColor];
    _vipCardNumTextfiled.layer.borderWidth = 1.0;
    _vipCardNumTextfiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _vipCardNumTextfiled.layer.masksToBounds = YES;
    
    _vipCardNumTextfiled.layer.cornerRadius = 5;
    _vipCardNumTextfiled.textColor = [UIColor blackColor];
    _vipCardNumTextfiled.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:_vipCardNumTextfiled];
    
    
    //确定按钮
    UIButton *_finishedBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _finishedBtn.frame = CGRectMake((Main_Screen_Width-150)/2, _vipCardNumTextfiled.bottom+20, 150, 40);
    [_finishedBtn setBackgroundColor:[UIColor redColor]];
    [_finishedBtn setTitle:@"确定" forState:UIControlStateNormal];
    _finishedBtn.layer.cornerRadius = 5;
    _finishedBtn.layer.masksToBounds = YES;
    [self.view addSubview:_finishedBtn];

    
    //按钮状态
    NSArray *combineArray = @[
                              
                              _vipCardNumTextfiled.rac_textSignal,
                              
                              _securityCodeTextfiled.rac_textSignal
                              
                              ];
    RAC(_finishedBtn,enabled) =  [RACSignal combineLatest:combineArray reduce:^id{
        
        NSInteger returnValue = _vipCardNumTextfiled.text.length != 0 &&  _securityCodeTextfiled.text.length != 0;
        
        return @(returnValue);
        
    }];
    
    RAC(_finishedBtn,backgroundColor) = [RACSignal combineLatest:combineArray reduce:^id{
        
        NSInteger returnValue = _vipCardNumTextfiled.text != 0 &&  _securityCodeTextfiled.text.length != 0;
        
        return returnValue ? [UIColor redColor] : [UIColor grayColor];
        
    }];
    
    UILabel *wraningLabel = [[UILabel alloc]initWithFrame:CGRectMake((Main_Screen_Width-200)/2, _finishedBtn.bottom+20, 200, 200)];
    wraningLabel.text = @"这里用到的是最进本的RAC,想要深入探索请移步  http://www.cnblogs.com/g-ios/tag/RAC/";
    wraningLabel.numberOfLines = 0;
    wraningLabel.textColor = [UIColor blueColor];
    [self.view addSubview:wraningLabel];

}




@end
