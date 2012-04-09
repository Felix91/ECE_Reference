//
//  detailedElectivesView.m
//  ECE_Reference
//
//  Created by 薇葭 张 on 12-03-31.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "detailedElectivesView.h"

@implementation detailedElectivesView

@synthesize dEV_donebutton;
@synthesize name;
@synthesize myLabel; 
@synthesize courseNo;
@synthesize option;
@synthesize informationList;
@synthesize imageViewer;
@synthesize courseTitle;
@synthesize courseNameLabel;
@synthesize courseName;


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
    self.informationList = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"informationCourseList" ofType:@"plist"]];
    
    NSString *courses = [[self.informationList valueForKey:option] objectAtIndex:courseNo];
    
    myLabel.numberOfLines = 0;
    [myLabel sizeToFit];
    CGRect myFrame = myLabel.frame;
   
    myFrame = CGRectMake(myFrame.origin.x, myFrame.origin.y, 280, myFrame.size.height);
    myLabel.frame = myFrame;
    myLabel.text=courses;
    
    courseTitle.text=option;

    courseNameLabel.text=courseName;
    
    UIImage *image = [UIImage imageNamed:@"face.jpg"];
    [self.imageViewer setImage:image];
   
    [image release];
    image=nil;
    
    [courses release];
    courses=nil;
    
}

- (void)viewDidUnload
{
    [self setDEV_donebutton:nil];
    [imageViewer release];
    imageViewer = nil;
    [courseTitle release];
    courseTitle = nil;
    [courseNameLabel release];
    courseNameLabel = nil;
    
    [courseList release];
    courseList = nil;
    [option release];
    option=nil;
    [myLabel release];
    myLabel=nil;
    [courseName release];
    courseName=nil;
    
    [super viewDidUnload];
  
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [dEV_donebutton release];
    //[imageViewer release];
    //[courseTitle release];
    //[courseNameLabel release];
    [super dealloc];
}

-(IBAction)doneButton:(id)sender
{
    [self dismissModalViewControllerAnimated: YES];
}
@end
