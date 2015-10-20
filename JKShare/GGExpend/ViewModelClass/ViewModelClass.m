//
//  ViewModelClass.m
//  MVVMTest
//
//  Created by 王立广 on 15/8/18.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "ViewModelClass.h"

@implementation ViewModelClass


- (instancetype)init
{
    self = [super init];
    
    if(self)
    {
        self.page = @(0);
    }
    return self;
}


//传入交互的block块
-(void)setBlockWithReturnBlock: (SuccessBlock) successBlock
                WithErrorBlock: (ErrorBlock) errorBlock
              WithFailureBlock: (FailureBlock) failureBlock WithHeaderRefreshBlock:(HeaderRefreshBlock)headerRefeshBlock WithFooterRefreshBlock:(FooterRefreshBlock)footerRefreshBlock WithFooterNoMoreDataBlock:(FooterNoMoreDataBlock)footerNoMoreDataBlock
{
    _successBlock      = successBlock;
    _errorBlock       = errorBlock;
    _failureBlock     = failureBlock;

    _headerRefreshBlock   = headerRefeshBlock;
    _footerRefreshBlock = footerRefreshBlock;

    _footerNoMoreDataBlock = footerNoMoreDataBlock;
    
}

//头部尾部刷新
- (void)AllRefreshRefresh
{
    
    if(self.collectView == nil)
    {
        self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            
            self.headerRefreshBlock();
            
        }];
        
        self.tableView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
            
            self.footerRefreshBlock();
        }];
        
        [self.tableView.header beginRefreshing];
        

    }
    else
    {
        self.collectView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            
            self.headerRefreshBlock();
            
        }];
        
        self.collectView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
            
            self.footerRefreshBlock();
        }];
        
        [self.collectView.header beginRefreshing];
    }
    
    
 }

//头部刷新
- (void)headerRefresh{
    
    if(self.collectView == nil)
    {
        self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            
            self.headerRefreshBlock();
            
        }];
        
        [self.tableView.header beginRefreshing];
        
        
    }
    else
    {
        self.collectView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            
            self.headerRefreshBlock();
            
        }];
        
        [self.collectView.header beginRefreshing];
    }
}

- (void)setBlockWithClickPraiseBlcok:(ClickPraiseSuccessBlock)clickPraiseSuccessBlock WithSendCommentSuccess:(SendCommetnSuccessBlock)sendCommentSuccessBlock;
{
    _clickPraiseSuccessBlock = clickPraiseSuccessBlock;
    _sendCommentSuccessBlock = sendCommentSuccessBlock;

}




@end
