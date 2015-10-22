//
//  GGCustomDefineVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/22.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "GGCustomDefineVC.h"

@interface GGCustomDefineVC ()

@end

@implementation GGCustomDefineVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"GGDefine(更多查看UIConstants.h)";
    

    [self commonUseDefineShow];
    
}

//常用宏定义
- (void)commonUseDefineShow{
    
    //获取屏幕宽高
    UITextView *screenWHTextView = [[UITextView alloc]init];
    screenWHTextView.frame = CGRectMake(50, 80, 300, 0);
    screenWHTextView.font = [UIFont systemFontOfSize:20];
    screenWHTextView.contentInset = UIEdgeInsetsMake(-60, 5, 5, 5);
    screenWHTextView.backgroundColor = [UIColor grayColor];
    screenWHTextView.userInteractionEnabled = NO;
    [self.view addSubview:screenWHTextView];
    screenWHTextView.text = @"获取屏幕宽高 Main_Screen_Width  Main_Screen_Height ";
    screenWHTextView.size = [screenWHTextView sizeThatFits:screenWHTextView.size];
    
    //自定义输出
    UITextView *logTextView = [[UITextView alloc]init];
    logTextView.frame = CGRectMake(50, screenWHTextView.bottom+20, 300, 0);
    logTextView.font = [UIFont systemFontOfSize:20];
    logTextView.backgroundColor = [UIColor grayColor];
    logTextView.userInteractionEnabled = NO;
    [self.view addSubview:logTextView];
    logTextView.text = @"自定义的输出 DLog()";
    logTextView.size = [logTextView sizeThatFits:logTextView.size];
    
    
    //沙盒数据的存取
    UITextView *userDefaultTextView = [[UITextView alloc]init];
    userDefaultTextView.frame = CGRectMake(50, logTextView.bottom+20, 300, 0);
    userDefaultTextView.font = [UIFont systemFontOfSize:20];
    userDefaultTextView.backgroundColor = [UIColor grayColor];
    userDefaultTextView.userInteractionEnabled = NO;
    [self.view addSubview:userDefaultTextView];
    userDefaultTextView.text =  @"存储  SEEKUSERDEFAULT(KEY)  取出  SAVEUSERDEFAULT(VALUE,KEY)";

    userDefaultTextView.size = [userDefaultTextView sizeThatFits:logTextView.size];
 
    

    //颜色rgb
    UITextView *RGBTextView = [[UITextView alloc]init];
    RGBTextView.frame = CGRectMake(50, userDefaultTextView.bottom+20, 300, 0);
    RGBTextView.font = [UIFont systemFontOfSize:20];
    RGBTextView.backgroundColor = [UIColor grayColor];
    RGBTextView.userInteractionEnabled = NO;
    [self.view addSubview:RGBTextView];
    RGBTextView.text =  @"颜色RGB  RGBACOLOR(r, g, b, a) RGBCOLOR(r, g, b)";
    RGBTextView.size = [RGBTextView sizeThatFits:RGBTextView.size];

    
    //rgb
    UITextView *selectImgTextView = [[UITextView alloc]init];
    selectImgTextView.frame = CGRectMake(50, RGBTextView.bottom+20, 300, 0);
    selectImgTextView.font = [UIFont systemFontOfSize:20];
    selectImgTextView.backgroundColor = [UIColor grayColor];
    selectImgTextView.userInteractionEnabled = NO;
    [self.view addSubview:selectImgTextView];
    selectImgTextView.text =  @"选择图片PNGIMAGE(NAME)  JPGIMAGE(NAME) IMAGE(NAME,EXT)  IMAGENAMED(NAME)";
    selectImgTextView.size = [selectImgTextView sizeThatFits:selectImgTextView.size];

}


@end
