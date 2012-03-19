//
//  ElectivesViewController.m
//  ECE_Reference
//
//  Created by 薇葭 张 on 12-03-18.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "ElectivesViewController.h"

@interface ElectivesViewController()
@property(nonatomic,retain) NSDictionary *courseList;
@property(nonatomic,retain) NSDictionary *detailcourseList;
@end

@implementation ElectivesViewController

@synthesize courseList;
@synthesize detailcourseList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
   self.courseList = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"courseList" ofType:@"plist"]];
    self.detailcourseList = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"detailCourseList" ofType:@"plist"]];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    courseList=nil;
    detailcourseList=nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.courseList count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return [[self.courseList allKeys] objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSString *Options = [self tableView:tableView titleForHeaderInSection:section];
	return [[self.courseList valueForKey:Options] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"courseCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
	NSString *option = [self tableView:tableView titleForHeaderInSection:indexPath.section];
	NSString *courses = [[self.courseList valueForKey:option] objectAtIndex:indexPath.row];
    NSString *details = [[self.detailcourseList valueForKey:option] objectAtIndex:indexPath.row];
    
	cell.textLabel.text = courses;
    cell.detailTextLabel.text=details;
    
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}
/*
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSString *option = [self tableView:tableView titleForHeaderInSection:indexPath.section];
	NSString *courses = [[self.courseList valueForKey:option] objectAtIndex:indexPath.row];
    
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
													message:[NSString stringWithFormat:@"You selected %@!", courses]
												   delegate:nil
										  cancelButtonTitle:@"OK"
										  otherButtonTitles:nil];
	[alert show];
	[alert release];
    
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}*/

@end
