//
//  GGPublicChangeTypeView.m
//  CDL_optimize
//
//  Created by 王立广 on 15/8/30.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "GGChangeTypeView.h"
#import "GGBackShdow.h"

@interface GGChangeTypeView()


@end
@implementation GGChangeTypeView

- (instancetype)init
{
    if(self = [super init])
    {
        self.frame = CGRectMake(Main_Screen_Width-25-_btnSize.width+kLeftMargin*2,69, 0,0);

    }
    return self;
}

#pragma mark 根据按钮数量布局UI
- (void)layoutUI:(NSInteger)typeNum selectTypeBlock:(SelectTypeBlock)seletedTyepBlock
{
    
    [[GGBackShdow sharedGGBackShdow] setTouchBlcok:^{
       
        [self removeTypeView];
    }];
    _selectedTypeBlock = seletedTyepBlock;
    
    for(NSInteger num = 0; num<typeNum; num++)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setBackgroundColor:_btnColor];
        
        btn.layer.cornerRadius = 3.5;
        btn.layer.masksToBounds = YES;
        
        btn.titleLabel.font = [UIFont systemFontOfSize:_btnFont];
        
        [btn setTitle:_namesArray[num] forState:UIControlStateNormal];

        btn.tag = num;
        
        [btn addTarget:self action:@selector(selectType:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.frame = CGRectMake(kTopMargin, kLeftMargin+(_btnSize.height+kTopBottonMargin)*num, _btnSize.width, _btnSize.height);
        
        [self addSubview:btn];

    }
    
    [UIView animateWithDuration:.5 animations:^{
        
        self.frame = CGRectMake(Main_Screen_Width-25-_btnSize.width+kLeftMargin*2,69, _btnSize.width+kTopMargin*2, _btnSize.height*typeNum+kLeftMargin*2+kTopBottonMargin*(typeNum-1));
    }];
    
    
    
    self.layer.cornerRadius = 3.5;
    self.layer.masksToBounds = YES;
}

#pragma mark 改变类型

- (void)selectType:(UIButton *)btn{
    
    [self removeTypeView];
    self.selectedTypeBlock(btn.tag);
}

//移除类型试图
- (void)removeTypeView{
    
    [[GGBackShdow sharedGGBackShdow] removeBackShdow];
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.frame = CGRectMake(Main_Screen_Width-25+kLeftMargin*2,69, 0, 0);
        
    } completion:^(BOOL finished) {
        
        NSArray *subViews = [self subviews];
        for(UIButton *btn in subViews){
            
            [btn removeFromSuperview];
        }
        
        [self removeFromSuperview];
        
    }];

}


@end
