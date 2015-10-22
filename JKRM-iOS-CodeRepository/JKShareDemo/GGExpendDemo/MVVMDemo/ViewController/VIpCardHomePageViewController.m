//
//  VIpCardHomePageViewController.m
//  CDL_optimize
//
//  Created by 王立广 on 15/9/14.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "VIpCardHomePageViewController.h"

#import "VipCardHeadView.h"
#import "VipCardViewModel.h"
#import "VipCardModel.h"


@interface VIpCardHomePageViewController ()<UITableViewDelegate, UITableViewDataSource>

/**
 *   数据显示tableView
 */
@property (nonatomic,retain)UITableView *tableView;

/**
 *  表头
 */
@property (nonatomic,retain) VipCardHeadView *headView;


@end


@implementation VIpCardHomePageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //布局UI
    [self layoutUI];
    
    //传递逻辑blcok
    [self loadLogic];
    

}

#pragma mark 布局UI
- (void)layoutUI
{
    self.title = @"MVVM demo";
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.scrollEnabled = NO;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    [self.view addSubview:self.tableView];
    
    
    
    UILabel *warning = [[UILabel alloc]initWithFrame:CGRectMake(50, Main_Screen_Height-64-50-10, Main_Screen_Width-100, 50)];
    
    warning.font = [UIFont systemFontOfSize:12];
    warning.textColor = [UIColor blueColor];
    warning.text = @"如有问题，请拨打客服电话13121529304";
    warning.textAlignment = NSTextAlignmentCenter;
    warning.numberOfLines = 2;
    
    [self.view addSubview:warning];

    

}

#pragma mark 传递逻辑block
- (void)loadLogic
{
    _vipCardViewModel = [[VipCardViewModel alloc]init];
    
    VIpCardHomePageViewController *weakSelf = self;
    
    [_vipCardViewModel setBlockWithReturnBlock:^(VipCardModel *model) {
        
        weakSelf.vipCardModel = model;
        
        weakSelf.headView.vipCardNumLabel.text = model.accountNumber;
        weakSelf.headView.vipCardSurplusLabel.text = [model.tokenCount stringValue];
        
        if([model.binding isEqual:@(1)])
        {
            weakSelf.headView.vipCardNumLabel.text = @"未绑定会员卡";
        }
        else
        {
            weakSelf.headView.vipCardNumLabel.text = model.accountNumber;
        }
        
        if([model.status isEqual:@(0)])
        {
            weakSelf.headView.vipCardShouldLostLabel.text = @"未挂失";
        }
        else
        {
            weakSelf.headView.vipCardShouldLostLabel.text = @"已挂失";
        }
        
        
    } WithErrorBlock:^(id errorBlock) {
        
    } WithFailureBlock:^(id failureBlock) {
        
    } WithHeaderRefreshBlock:^{
        
    } WithFooterRefreshBlock:^{
        
    } WithFooterNoMoreDataBlock:^{
        
    }];
    

    [self.vipCardViewModel fetchVipCardDataWtihUserId:@"271031448934402"];
    
}

#pragma mark UITableView dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = @"MVVM 使你的代码逻辑更清晰";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;

    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return Main_Screen_Height*0.3;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    _headView = [[VipCardHeadView alloc]init];
    
    _headView.backgroundColor = [UIColor grayColor];
    
    return _headView;
}


#pragma 试图的显示与消失
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.vipCardViewModel fetchVipCardDataWtihUserId:@"271031448934402"];
}


@end
