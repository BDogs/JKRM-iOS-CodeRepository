//
//  GGGetFrameVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGGetFrameVC.h"

@interface GGGetFrameVC ()

@end

@implementation GGGetFrameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"快速获取控件的坐标信息";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self getFrame];
}


- (void)getFrame{
    
    //测试view
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake((Main_Screen_Width-200)/2, 120, 200, 50)];
    testLabel.textColor = [UIColor whiteColor];
    testLabel.textAlignment = NSTextAlignmentCenter;
    testLabel.backgroundColor = [UIColor grayColor];
    testLabel.text = @"这是用于测试的testview";
    [self.view addSubview:testLabel];
    
    //输出框
    UITextField *outputTextFiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-250)/2, testLabel.bottom+20, 250, 40)];
    outputTextFiled.borderStyle = UITextBorderStyleRoundedRect;
    outputTextFiled.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:outputTextFiled];
    outputTextFiled.textAlignment = NSTextAlignmentCenter;
    outputTextFiled.placeholder = @"输出框";
    
    //获取试图所在上下左右的位置
    UIButton *edgeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    edgeBtn.frame = CGRectMake((Main_Screen_Width-250)/2, outputTextFiled.bottom+20, 250, 40);
    edgeBtn.backgroundColor = [UIColor redColor];
    [edgeBtn setTitle:@"获取边缘坐标（更多查看UIViewExt.h）" forState:UIControlStateNormal];
    [self.view addSubview:edgeBtn];
    edgeBtn.layer.cornerRadius = 3.5;
    edgeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    edgeBtn.layer.masksToBounds = YES;
    [[edgeBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x){
       
        outputTextFiled.text = [NSString stringWithFormat:@"top bottom right left:%.0f %.0f %.0f %.0f",testLabel.top,testLabel.bottom,testLabel.right,testLabel.left];
        
    }];
    

}


@end
