//
//  AppDelegate.m
//  TNColorScrollViewDemo
//
//  Created by Frederik Jacques on 29/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "AppDelegate.h"
#import "MyCustomViewClass.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    
    TNColorViewData *view1Data = [[TNColorViewData alloc] init];
    view1Data.color = [UIColor colorWithRed:254/255.0f green:206/255.0f blue:48/255.0f alpha:1];
    
    TNColorViewData *view2Data = [[TNColorViewData alloc] initWithColor:[UIColor colorWithRed:230/255.0f green:177/255.0f blue:53/255.0f alpha:1]];
    
    TNColorViewData *view3Data = [[TNColorViewData alloc] initWithColor:[UIColor colorWithRed:253/255.0f green:169/255.0f blue:41/255.0f alpha:1]];
    
    TNColorViewData *view4Data = [[TNColorViewData alloc] init];
    view4Data.color = [UIColor colorWithRed:229/255.0f green:137/255.0f blue:37/255.0f alpha:1];
    
    TNColorViewData *view5Data = [[TNColorViewData alloc] initWithCustomClass:[MyCustomViewClass class]];
    
    NSArray *colorData = @[view1Data, view2Data, view3Data, view4Data, view5Data];
    
    TNColorScrollViewConfig *config = [[TNColorScrollViewConfig alloc] initWithColorDataObjects:colorData bounces:YES showsHorizontalScrollIndicator:NO showsVerticalScrollIndicator:NO pagingEnabled:YES scrollHorizontal:YES];
    
    self.colorScrollVC = [[TNColorScrollViewController alloc] initWithColorScrollViewConfig:config];
    self.window.rootViewController = self.colorScrollVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
