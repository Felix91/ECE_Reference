//
//  WebViewController.h
//  ECE_Reference
//
//  Created by Felix Tang on 12-04-06.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSEntry;

@interface WebViewController : UIViewController
{
    UIWebView *_webView;
    RSSEntry *_entry;
}

-(IBAction)doneButton:(id)sender;

// IBOutlet here
@property (retain) IBOutlet UIWebView *webView;
@property (retain) RSSEntry *entry;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *dEV_donebutton;

@end
