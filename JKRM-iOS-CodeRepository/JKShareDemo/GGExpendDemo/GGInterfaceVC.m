//
//  GGInterfaceVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGInterfaceVC.h"

@interface GGInterfaceVC ()

@end

@implementation GGInterfaceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"接口管理(详情Interface.m)";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //声明
    UILabel *warningLabel = [[UILabel alloc]initWithFrame:CGRectMake((Main_Screen_Width-300)/2, 70, 300, 500)];
    warningLabel.textColor = [UIColor blackColor];
    warningLabel.numberOfLines = 0;
    [self.view addSubview:warningLabel];
    warningLabel.text = @"这个没什么demo可写，它主要是管理项目接口的一种方式，请移步Interface.h类,我写在这里主要是感觉它挺方便的";
}


@end
