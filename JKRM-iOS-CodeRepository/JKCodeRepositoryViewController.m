//
//  JKCodeRepository.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/19.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "JKCodeRepositoryViewController.h"
#import "GGDemoViewController.h"
@interface JKCodeRepositoryViewController ()

@end

@implementation JKCodeRepositoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //广广分享
    UIButton *ggShareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    ggShareBtn.frame = CGRectMake((Main_Screen_Width-100)/2, 100, 100, 50);
    ggShareBtn.backgroundColor = [UIColor grayColor];
    [ggShareBtn setTitle:@"广广分享" forState:UIControlStateNormal];
    
    [[ggShareBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        GGDemoViewController *ggDemoVC = [[GGDemoViewController alloc]init];
        
        [self.navigationController pushViewController:ggDemoVC animated:NO];
    }];
    
    [self.view addSubview:ggShareBtn];
    
    

}



@end
