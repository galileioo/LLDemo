//
//  AppDelegate.m
//  LLDemo
//
//  Created by galileio on 2016/12/21.
//  Copyright © 2016年 ctw. All rights reserved.
//

#import "AppDelegate.h"
#import "LLDemoListViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
   
    LLDemoListViewController * demoList = [[LLDemoListViewController alloc] initWithNibName:@"LLDemoListViewController" bundle:nil];
     UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:demoList];
    _window.rootViewController = nav;
    [_window makeKeyAndVisible];
    return YES;
}

@end
