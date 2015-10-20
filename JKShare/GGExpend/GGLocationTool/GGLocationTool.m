//
//  GGLocationTool.m
//  CDL_optimize
//
//  Created by 王立广 on 15/8/30.
//  Copyright (c) 2015年 王立广. All rights reserved.
//

#import "GGLocationTool.h"




//@interface GGLocationTool()<BMKLocationServiceDelegate,BMKGeoCodeSearchDelegate>
//
//
//@end
//
//
//@implementation GGLocationTool
//singleton_implementation(GGLocationTool);
//
//- (instancetype)init
//{
//    if(self = [super init])
//    {
//        //定位服务
//        [self setupLocation];
//        
//        //反编码
//        [self setupreverseGeoCode];
//        
//    }
//    return self;
//}
//
//- (void)setupreverseGeoCode
//{
//    _geoCodeSearch = [[BMKGeoCodeSearch alloc]init];
//    
//    _geoCodeSearch.delegate = self;
//}
//
//- (void)setupLocation
//{
//    //设置定位精确度，默认：kCLLocationAccuracyBest
//    [BMKLocationService setLocationDesiredAccuracy:kCLLocationAccuracyBest];
//    //指定最小距离更新(米)，默认：kCLDistanceFilterNone
//    [BMKLocationService setLocationDistanceFilter:1.0f];
//    
//    //初始化BMKLocationService
//    _locService = [[BMKLocationService alloc]init];
//    
//    _locService.delegate = self;
//    
//    [_locService startUserLocationService];
//}
//
//- (void)startLocation
//{
//    [_locService startUserLocationService];
//}
//
//- (void)stopLocation
//{
//    [_locService stopUserLocationService];
//}
//
//#pragma mark 定位服务 代理方法
///**
// *在将要启动定位时，会调用此函数
// */
//- (void)willStartLocatingUser
//{
//    DLog(@"启动定位");
//}
///**
// *在停止定位后，会调用此函数
// */
//- (void)didStopLocatingUser
//{
//    DLog(@"停止定位");
//}
///**
// *定位失败后，会调用此函数
// *@param error 错误号
// */
//- (void)didFailToLocateUserWithError:(NSError *)error
//{
//    DLog(@"定位失败 error =  %@",error);
//}
//
//
//
//// 处理位置信息更新
//
////处理方向变更信息
////- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation
////{
////    NSLog(@"heading is %@",userLocation.heading);
////}
////处理位置坐标更新
//- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation
//{
//    BMKReverseGeoCodeOption *reverseGeoCodeSearchOption = [[BMKReverseGeoCodeOption alloc]init];
//    
//    NSNumber *longitude = [NSNumber numberWithDouble:userLocation.location.coordinate.longitude];
//    
//    NSNumber *latitude = [NSNumber numberWithDouble:userLocation.location.coordinate.latitude];
//    
//    SAVEUSERDEFAULT(longitude, kLongitude);
//    SAVEUSERDEFAULT(latitude, kLatitude);
//    
//    reverseGeoCodeSearchOption.reverseGeoPoint = (CLLocationCoordinate2D)userLocation.location.coordinate;
//    
//    BOOL flag = [_geoCodeSearch reverseGeoCode:reverseGeoCodeSearchOption];
//    
//    if(flag)
//    {
//        DLog(@"定位成功且反geo检索发送成功");
//    }
//    else
//    {
//        DLog(@"反geo检索发送失败");
//    }
//    
//}
//
//#pragma mark 编码与反编码 代理方法
//
///**
// *返回地址信息搜索结果
// *@param searcher 搜索对象
// *@param result 搜索结BMKGeoCodeSearch果
// *@param error 错误号，@see BMKSearchErrorCode
// */
//- (void)onGetGeoCodeResult:(BMKGeoCodeSearch *)searcher result:(BMKGeoCodeResult *)result errorCode:(BMKSearchErrorCode)error
//{
//    
//}
//
///**
// *返回反地理编码搜索结果
// *@param searcher 搜索对象
// *@param result 搜索结果
// *@param error 错误号，@see BMKSearchErrorCode
// */
//- (void)onGetReverseGeoCodeResult:(BMKGeoCodeSearch *)searcher result:(BMKReverseGeoCodeResult *)result errorCode:(BMKSearchErrorCode)error
//{
//    SAVEUSERDEFAULT(result.addressDetail.district,kDistrict);
//    
////    [_locService stopUserLocationService];
//}
//
//
//
//- (void)dealloc
//{
//    _geoCodeSearch.delegate = nil;
//    _locService.delegate = nil;
//   
//}


//@end
