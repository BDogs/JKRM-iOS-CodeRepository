//
//  UIEmptyTableViewController.m
//  群聊
//
//  Created by 王立广 on 15/10/9.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "UIEmptyTableViewController.h"

@interface UIEmptyTableViewController ()<UITableViewDelegate,UITableViewDataSource,DZNEmptyDataSetDelegate,DZNEmptyDataSetSource>

@end

@implementation UIEmptyTableViewController

//置空
- (void)setIsEmptyMode:(BOOL)isEmptyMode{
    
    _isEmptyMode = isEmptyMode;
    
    if(_isEmptyMode == YES){
        
        self.tableView.emptyDataSetDelegate = self;
        self.tableView.emptyDataSetSource = self;
        
    }
}


#pragma mark - emptyDatasource

- (NSAttributedString *)buttonTitleForEmptyDataSet:(UIScrollView *)scrollView forState:(UIControlState)state
{
    
//    if([GGNetworkJudge sharedGGNetworkJudge].shouldHaveNet == YES)
//    {
        NSMutableAttributedString *titleAttributeString = [[NSMutableAttributedString alloc]initWithString:@"无数据,点击刷新"];
        [titleAttributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18] range:NSMakeRange(0, titleAttributeString.length)];
        
        return titleAttributeString;
        
//    }
//    else
//    {
//        NSMutableAttributedString *titleAttributeString = [[NSMutableAttributedString alloc]initWithString:@"网络连接失败,请检查网络,点击重新加载"];
//        [titleAttributeString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18] range:NSMakeRange(0, titleAttributeString.length)];
//        
//        return titleAttributeString;
//    }
    
    
    
}

- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView
{
    return [UIImage imageNamed:@"emptyImg.png"];
}


#warning 如需点击事件，在相应的控制器写入这个代理方法就行
//- (void)emptyDataSetDidTapButton:(UIScrollView *)scrollView
//{
//    NSLog(@"点击置空");
//}



@end
