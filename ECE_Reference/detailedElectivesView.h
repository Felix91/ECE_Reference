//
//  detailedElectivesView.h
//  ECE_Reference
//
//  Created by 薇葭 张 on 12-03-31.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailedElectivesView : UIViewController
{
    IBOutlet UILabel *myLabel; 
    NSInteger courseNo; 
    NSString *option;
    NSString *courseName;
    NSDictionary *courseList;
    IBOutlet UIImageView *imageViewer;
    IBOutlet UILabel *courseTitle;
    IBOutlet UILabel *courseNameLabel;
}
-(IBAction)doneButton:(id)sender;

@property (retain, nonatomic) IBOutlet UIBarButtonItem *dEV_donebutton;

@property (nonatomic, retain) IBOutlet UILabel *myLabel;
@property (nonatomic, retain) IBOutlet NSString *option;
@property (nonatomic, retain) IBOutlet NSString *name;
@property (nonatomic, retain) IBOutlet NSString *courseName;
@property (nonatomic,assign) IBOutlet NSInteger courseNo; 
@property(nonatomic,retain) NSDictionary *informationList;
@property (nonatomic,assign) IBOutlet UIImageView *imageViewer; 
@property (nonatomic,assign) IBOutlet UILabel *courseTitle; 
@property (nonatomic,assign) IBOutlet UILabel *courseNameLabel; 
@end
