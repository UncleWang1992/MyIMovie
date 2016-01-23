//
//  AppDelegate.m
//  MyIMovie
//
//  Created by Mac on 16/1/23.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self createTabbarViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)createTabbarViewController{
    UITabBarController *tabBarcontroller = [[UITabBarController alloc] init];
    [self createviewControllers:tabBarcontroller];
    self.window.rootViewController = tabBarcontroller;
}
- (void)createviewControllers:(UITabBarController *)tabBarController{
    NSMutableArray *controllers = [NSMutableArray new];
    NSArray *contrllerNames = @[@"ShouYeViewController",@"HotViewController",@"MuHouViewController",@"MineViewController"];
    NSArray *titles = @[@"首页",@"热榜",@"花絮",@"我的"];
    NSArray *imageNames = @[@"tab_icon_home",@"tab_icon_hot",@"tab_icon_vplus",@"tab_icon_profile"];
    for (int i = 0; i < contrllerNames.count; i++) {
        Class class = NSClassFromString(contrllerNames[i]);
        
        BaseViewController *viewController = [[class alloc] init];
        NSString *normeName = imageNames[i];
        NSString *selectName = [imageNames[i] stringByAppendingString:@"_sel"];
        UIImage *norImg = [[UIImage imageNamed:normeName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *selImg = [[UIImage imageNamed:selectName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:viewController];
        
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:titles[i] image:norImg selectedImage:selImg];
        viewController.tabBarItem = item;
        [controllers addObject:nvc];
    }
    tabBarController.viewControllers = controllers;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
