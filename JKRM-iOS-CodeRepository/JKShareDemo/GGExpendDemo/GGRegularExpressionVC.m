//
//  regularExpressionVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGRegularExpressionVC.h"

@interface GGRegularExpressionVC ()

@end

@implementation GGRegularExpressionVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"正则表达式（采用category封装）";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self regularExpression];
}

//正则表达式
- (void)regularExpression{
    
    //输入框
    UITextField *outputTextFiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-250)/2, 80, 250, 40)];
    outputTextFiled.borderStyle = UITextBorderStyleRoundedRect;
    outputTextFiled.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:outputTextFiled];
    outputTextFiled.clearButtonMode = YES;
    outputTextFiled.textAlignment = NSTextAlignmentCenter;
    outputTextFiled.placeholder = @"更多表达式在NSString+Extension.h";
    
    //邮箱验证
    UIButton *emailBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [emailBtn setTitle:@"邮箱验证" forState:UIControlStateNormal];
    emailBtn.frame = CGRectMake((Main_Screen_Width-100)/2, outputTextFiled.bottom+20, 100, 40);
    emailBtn.layer.cornerRadius = 3.5;
    emailBtn.layer.masksToBounds = YES;
    emailBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:emailBtn];
    
    [[emailBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
       
        BOOL isEmail = [outputTextFiled.text isEmail];
        
        outputTextFiled.text = [NSString stringWithFormat:@"%d",isEmail];
        
    }];
    
    
    
    

    
}
@end
