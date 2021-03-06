//
//  AppDelegate.m
//  Reminds
//
//  Created by ZhangPeng on 2018/5/12.
//  Copyright © 2018年 braspring. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "TabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self appConfig];
    [self configTabController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)configTabController{
    TabBarController *tabController = [[TabBarController alloc] init];
    self.window.rootViewController = tabController;
}

- (void)configLoginController{
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    UINavigationController *loginNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    loginNav.navigationBarHidden = YES;
    self.window.rootViewController = loginNav;
}

- (void)appConfig{
    [[IQKeyboardManager sharedManager] setEnable:YES];
    [[UITextField appearance] setTintColor:[UIColor colorWithHexString:@"#AAAAAA"]];
    
    [[UITabBar appearance] setTintColor:[UIColor colorWithHexString:@"#3E4952"]];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
