//
//  VideoViewController.m
//  ECE_Reference
//
//  Created by 薇葭 张 on 12-03-18.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "youtubeView.h"
#import "VideoViewController.h"

@implementation VideoViewController

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
   //	Viewer = [[youtubeView alloc] initWithStringAsURL:@"http://www.youtube.com/watch?v=gczw0WRmHQU" frame:CGRectMake(100, 170, 120, 120)];
	//[[self view] addSubview:Viewer];
    
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
