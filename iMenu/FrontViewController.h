//
//  FrontViewController.h
//  iMenu
//
//  Created by Charles Anthony Yu on 3/19/13.
//  Copyright (c) 2013 Charles Anthony Yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FrontViewController : UIViewController
// Attributes
@property(nonatomic) NSString *restaurantName;
- (IBAction)btnOrderNow:(id)sender;
- (IBAction)btnCancel:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imgRestoLogo;
@property (weak, nonatomic) IBOutlet UIImageView *frontRestoBg;

// Methods
- (void) setupRestoDisplay;

@end
