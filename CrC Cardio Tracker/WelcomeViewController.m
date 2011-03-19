//
//  WelcomeViewController.m
//  CrC Cardio Tracker
//
//  Created by Dan Cerutti on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WelcomeViewController.h"
#import "CrC_Cardio_TrackerAppDelegate.h"
#import "UsrSelViewController.h"


@implementation WelcomeViewController

/*
 touchesBegan Touch Event Handler for  the entire WelcomeView
 
 */
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self swapView:nil];
    
}

-(IBAction)swapView:(id)sender{
    
    CrC_Cardio_TrackerAppDelegate *delegate = (CrC_Cardio_TrackerAppDelegate *)[[UIApplication sharedApplication] delegate];
    UsrSelViewController *usrSelView = [[UsrSelViewController alloc] initWithNibName:@"UsrSelViewController" bundle:nil];
    
    [delegate switchView:self.view toView:usrSelView.view];
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Screen Animation
    UIImageView *animationView = [[UIImageView alloc] initWithFrame:self.view.frame];
    animationView.animationImages = [NSArray arrayWithObjects:    
                                     [UIImage imageNamed:@"WelcomeScreen.gif"], 
                                     [UIImage imageNamed:@"WelcomeScreen2.gif"], nil];
    
    animationView.animationDuration = 1.25;
    animationView.animationRepeatCount = 0;
    [animationView sizeToFit];
    [animationView startAnimating];
    [self.view addSubview:animationView];
    [animationView release]; 
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
