//
//  RestaurantsViewController.mRestaurantsViewController
//  iMenu
//
//  Created by Charles Anthony Yu on 3/18/13.
//  Copyright (c) 2013 Charles Anthony Yu. All rights reserved.
//

#import "RestaurantsViewController.h"
#import "FrontViewController.h"

@interface RestaurantsViewController ()

@end

@implementation RestaurantsViewController{
    // Attributes
    NSArray *restaurants;
    NSString *selectedResto;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Initialization
    restaurants = [NSArray arrayWithObjects:@"Mother's Fried Chicken", @"Canvas BBG", @"Other Restaurants", nil];
    [self setupNavigBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Methods for navigation bar
- (void) setupNavigBar
{
    UIImage *image = [UIImage imageNamed:@"smallLogo.png"];
    self.navigTitle.titleView = [[UIImageView alloc] initWithImage:image];
}

// Methods for tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurants count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = [restaurants objectAtIndex:indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    selectedResto = cell.textLabel.text;
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self performSegueWithIdentifier:@"restoFrontSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"restoFrontSegue"]){
        FrontViewController *frontRestoVC = (FrontViewController*)segue.destinationViewController;
        frontRestoVC.restaurantName = selectedResto;
    }
}

@end
