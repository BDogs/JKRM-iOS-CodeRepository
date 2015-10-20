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

    
    [self loadRequest];
}

- (void)loadRequest{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    dict[@"dartId"] = @"263821048543246";
    dict[@"startNum"] = @(0);

    [GGRequest sendGetOrPostRequest:@"http://boss.kingvic.cn/api/app/findDartcommentAndCdlShort" param:dict requestStyle:kGET setSerializer:kJSON success:^(id data) {
        
        DLog(@"%@",data);
        
    } failure:^(NSError *error) {
        
        DLog(@"请求失败==%@",error);
        
    }];
}



@end
