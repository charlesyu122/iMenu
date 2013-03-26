//
//  FrontViewController.m
//  iMenu
//
//  Created by Charles Anthony Yu on 3/19/13.
//  Copyright (c) 2013 Charles Anthony Yu. All rights reserved.
//

#import "FrontViewController.h"

@interface FrontViewController ()

@end

@implementation FrontViewController
// Synthesize attributes
@synthesize restaurantName, imgRestoLogo, frontRestoBg;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self setupRestoDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupRestoDisplay
{
    // Initialize view for Mother's Fried Chicken
    if([restaurantName isEqualToString:@"Mother's Fried Chicken"]){
        [imgRestoLogo setImage:[UIImage imageNamed:@"mfc_logo.png"]];
        [frontRestoBg setImage:[UIImage imageNamed:@"mfc_wood.png"]];
    }
    
}

- (IBAction)btnOrderNow:(id)sender {
}

- (IBAction)btnCancel:(id)sender {
}
@end
