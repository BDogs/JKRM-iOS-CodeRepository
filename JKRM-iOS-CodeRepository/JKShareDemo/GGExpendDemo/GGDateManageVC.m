//
//  GGDateManageVC.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/21.
//  Copyright © 2015年 王立广. All rights reserved.
//



#import "GGDateManageVC.h"


@interface GGDateManageVC ()

//输入框
@property (nonatomic,strong) UITextField *inputTextFiled;

//输出框
@property (nonatomic,strong) UITextField *outputTextFiled;

@end

@implementation GGDateManageVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"DateTool";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _inputTextFiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-200)/2, 120, 200, 40)];
    _inputTextFiled.placeholder = @"输入框";
    _inputTextFiled.borderStyle = UITextBorderStyleRoundedRect;
    _inputTextFiled.clearButtonMode = UITextFieldViewModeWhileEditing;
    _inputTextFiled.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:_inputTextFiled];
    
    _outputTextFiled = [[UITextField alloc]initWithFrame:CGRectMake((Main_Screen_Width-200)/2, 180, 200, 40)];
    _outputTextFiled.placeholder = @"输出框";
    _outputTextFiled.clearButtonMode = UITextFieldViewModeWhileEditing;
    _outputTextFiled.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:_outputTextFiled];
    
    [self timestampManageBtn];
}


#pragma 对时间戳的处理
- (void)timestampManageBtn{
    
    //计算发布时间
    UIButton *publishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [publishBtn setTitle:@"发布时间(输入时间戳)" forState:UIControlStateNormal];
    publishBtn.frame = CGRectMake((Main_Screen_Width-200)/2, _outputTextFiled.bottom+20, 200, 40);
    publishBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:publishBtn];
    [[publishBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        long long timestamp = [_inputTextFiled.text doubleValue];
        NSNumber *number = [NSNumber numberWithDouble:timestamp];
        _outputTextFiled.text = [DateTool sendTheCurentTimeFromNowWithTheTime:number];
        
    }];
    
    //获取当前时间的格式串
    UIButton *getTimeStrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [getTimeStrBtn setTitle:@"当前时间(输入格式)" forState:UIControlStateNormal];
    getTimeStrBtn.frame = CGRectMake((Main_Screen_Width-200)/2, publishBtn.bottom+20, 200, 40);
    getTimeStrBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:getTimeStrBtn];
    [[getTimeStrBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {

        _outputTextFiled.text = [DateTool sendTheTimeStrAtNow:_inputTextFiled.text];
        
    }];
    
    //获取指定时间戳的格式串
    UIButton *custumTimestampBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [custumTimestampBtn setTitle:@"获取指定时间戳的格式串" forState:UIControlStateNormal];
    custumTimestampBtn.frame = CGRectMake((Main_Screen_Width-200)/2, getTimeStrBtn.bottom+20, 200, 40);
    custumTimestampBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:custumTimestampBtn];
    [[custumTimestampBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        long long timestamp = [_inputTextFiled.text doubleValue];
        NSNumber *number = [NSNumber numberWithDouble:timestamp];

        _outputTextFiled.text = [DateTool sendTheTimeStrWithTheSecond:number WithFormatStr:@"YYYY-MMM-dd"];
        
    }];
    
    
    //判断是否是距离24小时之内的时间
    UIButton *is24WithinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [is24WithinBtn setTitle:@"是否在24h之内" forState:UIControlStateNormal];
    is24WithinBtn.frame = CGRectMake((Main_Screen_Width-200)/2, custumTimestampBtn.bottom+20, 200, 40);
    is24WithinBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:is24WithinBtn];
    [[is24WithinBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        long long timestamp = [_inputTextFiled.text doubleValue];
        NSNumber *number = [NSNumber numberWithDouble:timestamp];
        
        _outputTextFiled.text =  [NSString stringWithFormat:@"%d",[DateTool sendTheBoolOfNewWithTheSecond:number]];
        
    }];
    
    
    //计算年龄
    UIButton *competeAgeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [competeAgeBtn setTitle:@"计算年龄" forState:UIControlStateNormal];
    competeAgeBtn.frame = CGRectMake((Main_Screen_Width-200)/2, is24WithinBtn.bottom+20, 200, 40);
    competeAgeBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:competeAgeBtn];   
    [[competeAgeBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        long long timestamp = [_inputTextFiled.text doubleValue];
        NSNumber *number = [NSNumber numberWithDouble:timestamp];
        
        _outputTextFiled.text =  [DateTool sendTheAgeStrWithTheSecond:number];
        
    }];

    
    //获取年月日星期
    UIButton *getDateModelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [getDateModelBtn setTitle:@"获取当前月日星期" forState:UIControlStateNormal];
    getDateModelBtn.frame = CGRectMake((Main_Screen_Width-200)/2, competeAgeBtn.bottom+20, 200, 40);
    getDateModelBtn.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:getDateModelBtn];
    [[getDateModelBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
//        long long timestamp = [_inputTextFiled.text doubleValue];
//        NSNumber *number = [NSNumber numberWithDouble:timestamp];
        
        DateModel *dateModel = [DateTool sendTheDateInfoByNow];
        
        _outputTextFiled.text = [NSString stringWithFormat:@"%ld月 %ld日 %@",dateModel.month,dateModel.day,dateModel.weekDayStr];
        
    }];


    
    

    
   
    

}

@end
