//
//  CrC_Cardio_TrackerAppDelegate.m
//  CrC Cardio Tracker
//
//  Created by Dan Cerutti on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CrC_Cardio_TrackerAppDelegate.h"
#import "WelcomeViewController.h"

@implementation CrC_Cardio_TrackerAppDelegate


@synthesize window=_window,welcomeView;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    
    //WelcomeView Link
    WelcomeViewController *aView = [[WelcomeViewController alloc] initWithNibName:@"WelcomeViewController" bundle:nil];
    self.welcomeView = aView;
    [_window addSubview:welcomeView.view];
    [aView release];
    
    //Screen Animation
    UIImageView *animationView = [[UIImageView alloc] initWithFrame:welcomeView.view.frame];
    animationView.animationImages = [NSArray arrayWithObjects:    
                                     [UIImage imageNamed:@"WelcomeScreen.gif"], 
                                     [UIImage imageNamed:@"WelcomeScreen2.gif"], nil];
    
    animationView.animationDuration = 1.25;
    animationView.animationRepeatCount = 0;
    [animationView startAnimating];
    [welcomeView.view addSubview:animationView];
    [animationView release]; 
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [welcomeView release];
    [super dealloc];
}

@end
