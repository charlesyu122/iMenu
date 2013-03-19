//
//  ViewController.h
//  iMenu
//
//  Created by Charles Anthony Yu on 3/18/13.
//  Copyright (c) 2013 Charles Anthony Yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
// Attributes
@property (weak, nonatomic) IBOutlet UITableView *restaurantList;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigTitle;
// Methods
- (void) setupNavigBar;

@end
