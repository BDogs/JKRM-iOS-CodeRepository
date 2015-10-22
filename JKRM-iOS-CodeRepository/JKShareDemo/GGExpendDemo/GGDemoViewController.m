//
//  GGDemoViewController.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/19.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGDemoViewController.h"
#import "GGRequestVC.h"
#import "GGDateManageVC.h"
#import "GGCustomDefineVC.h"
#import "GGGetFrameVC.h"
#import "GGRegularExpressionVC.h"
#import "GGEmptyTableVC.h"
#import "VIpCardHomePageViewController.h"
#import "GGRACViewController.h"
#import "GGInterfaceVC.h"
@interface GGDemoViewController ()

/*
 *  类型选择试图
 */
@property (nonatomic,strong) GGChangeTypeView *changeTypeView;

@end

@implementation GGDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
        
    [self layoutUI];
    
    
    
}

#pragma mark 布局UI
- (void)layoutUI{
    
    //右上角
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"GGChangeTypeView & BackShdow" style:UIBarButtonItemStyleDone target:self action:@selector(selectTypeView)];
    
    
    //声明
    UILabel *warningLabel = [[UILabel alloc]initWithFrame:CGRectMake((Main_Screen_Width-300)/2, 70, 300, 500)];
    warningLabel.textColor = [UIColor blackColor];
    warningLabel.numberOfLines = 0;
    [self.view addSubview:warningLabel];
    warningLabel.text = @"     除了右上角的那些写的那些demo,GGExpend还有其他东西，但由于不常用，我就没有写出来，我就在这里做一下简单的介绍，有兴趣的可以自己琢磨或者联系本人。\n\n DAKeyboardControl\n\n 这个主要是控制键盘,具体的效果就像QQ聊天界面，你下滑的时候，键盘也会跟着下滑相同的距离。 \n\n GGLocationTool \n\n 是基于百度地图的定位 \n\n GGNetworJudeg\n\n 基于AFN的网络判断";
}



- (void)selectTypeView{
    
    self.changeTypeView.backgroundColor = [UIColor grayColor];
    self.changeTypeView.btnFont = 14;
    self.changeTypeView.btnSize = CGSizeMake(200, 50);
    self.changeTypeView.btnColor = [UIColor redColor];
    self.changeTypeView.namesArray = @[@"GGNetRequest",@"DateTool(来自宋老板)",@"UIConstants(宏定义整理)",@"UIViewExt(获取坐标信息)",@"正则表达式",@"UITableView的置空模式",@"MVVM逻辑层的封装",@"RAC(响应式编程)",@"接口管理Interface.h"];
    [[GGBackShdow sharedGGBackShdow] addBackShdow:self.view];
    [self.changeTypeView layoutUI:self.changeTypeView.namesArray.count selectTypeBlock:^(NSInteger selectedType) {
        
        [[GGBackShdow sharedGGBackShdow] removeFromSuperview];
        
        [self selectedType:selectedType];
        
        
    }];
    
    [self.view addSubview:self.changeTypeView];
    
}


#pragma mark 事件处理
//选中类型
- (void)selectedType:(NSInteger)selectedType{
    
    switch (selectedType) {
            
        case 0:{//广广的网络请求
            
            GGRequestVC *ggReqestVC = [[GGRequestVC alloc]init];
            
            [self.navigationController pushViewController:ggReqestVC animated:NO];
            
        }break;
            
        case 1:{//日期管理
            
            GGDateManageVC *ggdateManageVC = [[GGDateManageVC alloc]init];
            
            [self.navigationController pushViewController:ggdateManageVC animated:NO];
            
        }break;

        case 2:{
            
            GGCustomDefineVC *ggCustomDefineVC = [[GGCustomDefineVC alloc]init];
            
            [self.navigationController pushViewController:ggCustomDefineVC animated:NO];
            
        }break;

        case 3:{
            
            GGGetFrameVC *ggGetFrameVC = [[GGGetFrameVC alloc]init];
            
            [self.navigationController pushViewController:ggGetFrameVC animated:NO];
            
        }break;

        case 4:{
            
            GGRegularExpressionVC *ggRegularVC = [[GGRegularExpressionVC alloc]init];
            
            [self.navigationController pushViewController:ggRegularVC animated:NO];
            
        }break;
            
        case 5:{
            
            GGEmptyTableVC *ggEmptyTableVC = [[GGEmptyTableVC alloc]init];
            
            [self.navigationController pushViewController:ggEmptyTableVC animated:NO];
            
        }break;
            
        case 6:{
            
            VIpCardHomePageViewController *vipCardVC = [[VIpCardHomePageViewController alloc]init];
            
            [self.navigationController pushViewController:vipCardVC animated:NO];
            
        }break;
            
        case 7:{
            
            GGRACViewController *ggRACVC = [[GGRACViewController alloc]init];
            
            [self.navigationController pushViewController:ggRACVC animated:NO];
            
        }break;
            
        case 8:{
            
            GGInterfaceVC  *ggInterfaceVC = [[GGInterfaceVC alloc]init];
            
            [self.navigationController pushViewController:ggInterfaceVC animated:NO];
            
        }break;


    }
    
}




#pragma mark getter method
//类型试图
- (GGChangeTypeView *)changeTypeView
{
    if(_changeTypeView == nil){
        
        _changeTypeView = [[GGChangeTypeView alloc]init];

    }
    
    return _changeTypeView;
}


@end
