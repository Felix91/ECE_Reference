//
//  NewsViewController.h
//  ECE_Reference
//
//  Created by Felix Tang on 12-03-24.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface NewsViewController : UITableViewController
{
    NSMutableArray *_allEntries; // to keep a list of all RSS entries
    NSOperationQueue *_queue; // to queue operations
    NSArray *_feeds; // feeds array that will hold URLs for RSS feeds to be displayed
    WebViewController *_webViewController;
}

@property (retain) NSMutableArray *allEntries;
@property (retain) NSOperationQueue *queue;
@property (retain) NSArray *feeds;
@property (retain) WebViewController *webViewController;

@end
