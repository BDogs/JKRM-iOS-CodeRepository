//
//  BackShdow.h
//  CDL_optimize
//
//  Created by 王立广 on 15/8/21.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Singleton.h"
#import "GGChangeTypeView.h"

#define kAlpha 0.2  //透明度


typedef void(^ClickBackShdow)();

@interface GGBackShdow : UIView

singleton_interface(GGBackShdow);

/**
 *  添加黑色遮罩
 */
- (void)addBackShdow:(UIView *)superView;

/**
 *  移除黑色背景
 */
- (void)removeBackShdow;

@property (nonatomic, strong) ClickBackShdow clickBackShdow;

/**
 *  点击试图的block块
 */
- (void)setTouchBlcok:(ClickBackShdow) clickBlockShdow;

@end
