//
//  GGPublicChangeTypeView.h
//  CDL_optimize
//
//  Created by 王立广 on 15/8/30.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SelectTypeBlock) (NSInteger selectedType);

#define kTopMargin 5
#define kLeftMargin 5
#define kTopBottonMargin 5

@interface GGChangeTypeView : UIView

/**
 *  布局UI传递事件逻辑
 */
- (void)layoutUI:(NSInteger)typeNum selectTypeBlock:(SelectTypeBlock)seletedTyepBlock;

/**
 * 类型按钮的尺寸
 */
@property (nonatomic,assign) CGSize btnSize;


/**
 *  按钮的颜色
 */
@property (nonatomic, retain) UIColor *btnColor;

/**
 *  按钮上字体的大小
 */
@property (nonatomic, assign) float btnFont;

/**
 *  存放按钮名字的数组
 */
@property (nonatomic, retain) NSArray *namesArray;

@property (nonatomic,strong) SelectTypeBlock selectedTypeBlock;





@end
