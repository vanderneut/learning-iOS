//
//  EVAppDelegate.m
//  Tabbed Library
//
//  Created by Erik van der Neut on 5/12/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVAppDelegate.h"
#import "EVAuthorsViewController.h"
#import "EVAllBooksViewController.h"

@implementation EVAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Initialize Tab Bar controller:
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    // Initialize Authors view controller:
    EVAuthorsViewController *authorsViewController = [[EVAuthorsViewController alloc] init];
    
    // Initialize Navigation Controller:
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:authorsViewController];
    
    // Initialize all-books view controller:
    EVAllBooksViewController *allBooksViewController = [[EVAllBooksViewController alloc] init];
    
    // Initialize an additional series of view controllers to demonstrate how the tab bar controller handles that:
    EVAllBooksViewController *vc3 = [[EVAllBooksViewController alloc] init];
    EVAllBooksViewController *vc4 = [[EVAllBooksViewController alloc] init];
    EVAllBooksViewController *vc5 = [[EVAllBooksViewController alloc] init];
    EVAllBooksViewController *vc6 = [[EVAllBooksViewController alloc] init];
    
    // Set view controllers Tab Bar controller:
    [tabBarController setViewControllers:@[navigationController, allBooksViewController, vc3, vc4, vc5, vc6]];
    
    // Initialize window:
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Configure window:
    [self.window setRootViewController:tabBarController];
    [self.window setBackgroundColor:[UIColor whiteColor]];
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
