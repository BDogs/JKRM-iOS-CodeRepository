//
//  ViewModelClass.h
//  MVVMTest
//
//  Created by 王立广 on 15/8/18.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <Foundation/Foundation.h>


#pragma mark 定义block

typedef void (^SuccessBlock) (id successBlock);
typedef void (^ErrorBlock) (id errorBlock);
typedef void (^FailureBlock)(id failureBlock);
typedef void (^HeaderRefreshBlock)();
typedef void (^FooterRefreshBlock)();
typedef void (^FooterNoMoreDataBlock)();
typedef void (^ClickPraiseSuccessBlock)(NSString *praiseNum);
typedef void (^SendCommetnSuccessBlock)(NSString *commentNum);


@interface ViewModelClass : NSObject

#pragma mark 声明block

/**
 *  tableView
 */
@property (nonatomic,retain) UITableView *tableView;

/**
 *  collectView
 */
@property (nonatomic,retain) UICollectionView *collectView;

/**
 *  页码
 */
@property (nonatomic,retain) NSNumber *page;

/**
 *  请求成功的block
 */
@property (nonatomic, strong) SuccessBlock successBlock;
/**
 *  请求错误的block
 */
@property (nonatomic, strong) ErrorBlock errorBlock;
/**
 *  请求失败的block
 */
@property (nonatomic, strong) FailureBlock failureBlock;

/**
 *  下拉刷新block
 */
@property (nonatomic, strong) HeaderRefreshBlock headerRefreshBlock;
/**
 *  上拉刷新block
 */
@property (nonatomic, strong) FooterRefreshBlock footerRefreshBlock;


/**
 *  没有更多数据block
 */
@property (nonatomic, strong ) FooterNoMoreDataBlock footerNoMoreDataBlock;

/**
 *  点赞成功block
 */
@property (nonatomic, strong) ClickPraiseSuccessBlock clickPraiseSuccessBlock;

/**
 *  评论成功block
 */
@property (nonatomic, strong) SendCommetnSuccessBlock sendCommentSuccessBlock;

/**
 *  传入交互的Block块
 *
 *  @param returnBlock  成功块
 *  @param errorBlock   错误块
 *  @param failureBlock 失败块
 */
-(void)setBlockWithReturnBlock: (SuccessBlock) successBlock
                 WithErrorBlock: (ErrorBlock) errorBlock
              WithFailureBlock: (FailureBlock) failureBlock WithHeaderRefreshBlock:(HeaderRefreshBlock) headerRefeshBlock WithFooterRefreshBlock:(FooterRefreshBlock)footerRefreshBlock WithFooterNoMoreDataBlock:(FooterNoMoreDataBlock) footerNoMoreDataBlock;


/**
 *  头部尾部刷新
 */
- (void)AllRefresh;

/**
 *  头部刷新
 */
- (void)headerRefresh;



/**
 *  交互逻辑
 */
- (void)setBlockWithClickPraiseBlcok:(ClickPraiseSuccessBlock)clickPraiseSuccessBlock WithSendCommentSuccess:(SendCommetnSuccessBlock)sendCommentSuccessBlock;

@end
