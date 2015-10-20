//
//  GGDemoViewController.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/19.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGDemoViewController.h"
#import "GGRequestVC.h"
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
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"GGChangeTypeView & BackShdow" style:UIBarButtonItemStyleDone target:self action:@selector(selectTypeView)];
}

- (void)selectTypeView{
    
    self.changeTypeView.backgroundColor = [UIColor grayColor];
    self.changeTypeView.btnFont = 14;
    self.changeTypeView.btnSize = CGSizeMake(140, 50);
    self.changeTypeView.btnColor = [UIColor redColor];
    self.changeTypeView.namesArray = @[@"GGNetRequest",@"GGNewRequest"];
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
            
        case 1:{
            
        }break;

        case 2:{
            
        }break;

        case 3:{
            
        }break;

        case 4:{
            
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
