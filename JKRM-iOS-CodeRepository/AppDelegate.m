//
//  AppDelegate.m
//  JKRM-iOS-CodeRepository
//
//  Created by 王立广 on 15/10/19.
//  Copyright © 2015年 王立广. All rights reserved.
//

#import "AppDelegate.h"
#import "JKCodeRepositoryViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    JKCodeRepositoryViewController *JKCodeShare = [[JKCodeRepositoryViewController alloc]init];
    
    UINavigationController *NavVC = [[UINavigationController alloc]initWithRootViewController:JKCodeShare];

    self.window.rootViewController = NavVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
