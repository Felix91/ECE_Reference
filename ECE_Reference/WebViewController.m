//
//  WebViewController.m
//  ECE_Reference
//
//  Created by Felix Tang on 12-04-06.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "WebViewController.h"
#import "RSSEntry.h"

@implementation WebViewController

@synthesize webView = _webView;
@synthesize entry = _entry;
@synthesize dEV_donebutton;

// new method
// display URL
- (void)viewWillAppear:(BOOL)animated
{
    NSURL *url = [NSURL URLWithString:_entry.articleUrl];    
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
}

// new method
// clear screen
- (void)viewWillDisappear:(BOOL)animated {
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"about:blank"]]];
    
}

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

- (void)dealloc
{
    [_entry Release];
    _entry = nil;
    [_webView Release];
    _webView = nil;
    [dEV_donebutton release];
    [self setDEV_donebutton:nil];
    [super dealloc];
}

-(IBAction)doneButton:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
