//
//  GGRequestVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/20.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGRequestVC.h"

@interface GGRequestVC ()

@end

@implementation GGRequestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GGRequest";
    self.view.backgroundColor = [UIColor whiteColor];

    
    UIButton *requestBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [requestBtn setTitle:@"基于AFN封装网络请求类演示" forState:UIControlStateNormal];
    requestBtn.frame = CGRectMake((Main_Screen_Width-230)/2, 100, 230, 40);
    requestBtn.backgroundColor = [UIColor grayColor];
    [requestBtn addTarget:self action:@selector(clickAFNBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:requestBtn];
    
    
}

#pragma mark 利用AFN封装的网络请求类演示
- (void)clickAFNBtn{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    dict[@"dartId"] = @"263821048543246";
    dict[@"startNum"] = @(0);

    [GGRequest sendGetOrPostRequest:@"http://boss.kingvic.cn/api/app/findDartcommentAndCdlShort" param:dict requestStyle:kGET setReturnType:kPOST success:^(id data) {
        
        DLog(@"%@",data);
        
    } failure:^(NSError *error) {
        
        DLog(@"请求失败==%@",error);
    }];
        
}



@end
