//
//  youtubeView.m
//  ECE_Reference
//
//  Created by 薇葭 张 on 12-03-18.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "youtubeView.h"

@implementation youtubeView

#pragma mark -
#pragma mark Initialization

- (youtubeView *)initWithStringAsURL:(NSString *)urlString frame:(CGRect)frame;
{
    if (self = [super init]) 
    {
		// Create webview with requested frame size
        self = [[UIWebView alloc] initWithFrame:frame];
        
		// HTML to embed YouTube video
        NSString *youTubeVideoHTML = @"<html><head>\
        <body style=\"margin:0\">\
        <embed id=\"yt\" src=\"%@\" type=\"application/x-shockwave-flash\" \
        width=\"%0.0f\" height=\"%0.0f\"></embed>\
        </body></html>";
        
        // Populate HTML with the URL and requested frame size
        NSString *html = [NSString stringWithFormat:youTubeVideoHTML, urlString, frame.size.width, frame.size.height];
        
        // Load the html into the webview
        [self loadHTMLString:html baseURL:nil];
	}
    
    return self;  
}

#pragma mark -
#pragma mark Cleanup

- (void)dealloc 
{
    [super dealloc];
}

@end

