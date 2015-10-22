//
//  GGEmptyTableVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGEmptyTableVC.h"

@interface GGEmptyTableVC ()
{
    NSInteger numCell;
}

@end

@implementation GGEmptyTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"置空模式";
    self.isEmptyMode = YES;  //置空模式
    self.isDataChcheMode = YES; //缓存模式,敬请期待
    self.tableView.separatorStyle = NO;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    UIBarButtonItem *emptyArray = [[UIBarButtonItem alloc]initWithTitle:@"无数据" style:UIBarButtonItemStylePlain target:self action:@selector(clickEmptyBtn)];
    
    UIBarButtonItem *dataArray = [[UIBarButtonItem alloc]initWithTitle:@"有数据" style:UIBarButtonItemStylePlain target:self action:@selector(clickDataBtn)];

    self.navigationItem.rightBarButtonItems = @[emptyArray,dataArray];
    
    
}

//无数据
- (void)clickEmptyBtn{
    
    numCell = 0;
    [self.tableView reloadData];

    
}
//有数据
- (void)clickDataBtn{
    
    numCell = 12;
    [self.tableView reloadData];    
}

- (void)emptyDataSetDidTapButton:(UIScrollView *)scrollView
{
    [MBProgressHUD showSuccess:@"已点击"];
}


#pragma mark UITableView dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return numCell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"该控制器需要继承UIEmptyTableViewController";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.font = SYSTEMFONT(12);
    
    return cell;
}

@end
