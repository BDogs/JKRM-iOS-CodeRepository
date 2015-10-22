//
//  BackShdow.m
//  CDL_optimize
//
//  Created by 王立广 on 15/8/21.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "GGBackShdow.h"


@implementation GGBackShdow

singleton_implementation(GGBackShdow);

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self layoutUI];
    }
    return self;
}

- (void)layoutUI
{
    self.backgroundColor = [UIColor blackColor];
    
    self.alpha = kAlpha;
    
    self.frame = CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height-64);

}

- (void)addBackShdow:(UIView *)superView
{
    [superView addSubview:self];
}

- (void)removeBackShdow
{
    [self removeFromSuperview];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self removeFromSuperview];
    self.clickBackShdow();
}


- (void)setTouchBlcok:(ClickBackShdow)clickBlockShdow
{
    _clickBackShdow = clickBlockShdow;
}
@end
