//
//  EZVAppDelegate.m
//  StarWars
//
//  Created by user22791 on 21/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//


#import "EZVAppDelegate.h"
#import "EZVCharacterModel.h"
#import "EZVCharacterViewController.h"
#import "EZVCharacterWikiViewController.h"

@implementation EZVAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
   // EZVVista1ViewController *controller = [[EZVVista1ViewController alloc]init];
    //	self.window.rootViewController = controller;
    
    
    
    NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];

    
    NSURL *vaderSound = [[NSBundle mainBundle]URLForResource:@"vader" withExtension:@"caf"];
    NSData *vaderDataSound = [NSData dataWithContentsOfURL:vaderSound];
    
    EZVCharacterModel *vader = [[EZVCharacterModel alloc]initWithFirstName:@"Anakin" lastName:@"Skywalker" alias:@"Darth Vader" wikiPage:url foto:[UIImage imageNamed:@"darthVader.jpg"] soundData:vaderDataSound];
    
     NSURL *rulC3PO = [NSURL URLWithString:@""];
    
    EZVCharacterModel *c3po = [[EZVCharacterModel alloc]initWithAlias:@"c3po" wikiPage:rulC3PO foto:[UIImage imageNamed:@"c3po.jpg"]  soundData:
                               [NSData dataWithContentsOfURL:[[NSBundle mainBundle]URLForResource:@"c3po" withExtension:@"caf"]]
                               ];
   
    
    
    
    // CCharear navegacion e inferfaz
    EZVCharacterViewController *vaderController =[[EZVCharacterViewController alloc]initWithModel:vader];
                                                                                                                                               
    EZVCharacterViewController *c3poController =[[EZVCharacterViewController alloc]initWithModel:c3po];
   // EZVCharacterWikiViewController *wikiController = [[EZVCharacterWikiViewController alloc]initWithModel:vader];
    
    
    UINavigationController *nv = [[UINavigationController alloc]initWithRootViewController:vaderController];
                                                                                                                                              
    UINavigationController *nvC3 = [[UINavigationController alloc]initWithRootViewController:c3poController];
    
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    
    tabBar.viewControllers=@[nv,nvC3];

    
    self.window.rootViewController = tabBar;
    
    
    // Override point for customization after application launch.
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
