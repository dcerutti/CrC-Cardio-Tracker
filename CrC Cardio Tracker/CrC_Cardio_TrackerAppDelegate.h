//
//  CrC_Cardio_TrackerAppDelegate.h
//  CrC Cardio Tracker
//
//  Created by Dan Cerutti on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WelcomeViewController;

@interface CrC_Cardio_TrackerAppDelegate : NSObject <UIApplicationDelegate> {
    
    

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) WelcomeViewController *welcomeView;


-(void)switchView:(UIView *)view1 toView:(UIView *)view2;


@end
