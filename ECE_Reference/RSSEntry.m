//
//  RSSEntry.m
//  ECE_Reference
//
//  Created by Felix Tang on 12-03-24.
//  Copyright (c) 2012 UBC. All rights reserved.
//
// Keeps track of the individual articles inside an RSS feed

#import "RSSEntry.h"

@implementation RSSEntry
// synthesize properties
@synthesize blogTitle = _blogTitle;
@synthesize articleTitle = _articleTitle;
@synthesize articleUrl = _articleUrl;
@synthesize articleDate = _articleDate;

// initialiser
- (id)initWithBlogTitle:(NSString *)blogTitle articleTitle:(NSString *)articleTitle articleUrl:(NSString *)articleUrl articleDate:(NSDate *)articleDate
{
    if ((self = [super init]))
    {
        _blogTitle = [blogTitle copy];
        _articleTitle = [articleTitle copy];
        _articleUrl = [articleUrl copy];
        _articleDate = [articleDate copy];
    }
    return self;
}

- (void)dealloc
{
    [_blogTitle release];
    _blogTitle = nil;
    [_articleTitle release];
    _articleTitle = nil;
    [_articleUrl release];
    _articleUrl = nil;
    [_articleDate release];
    _articleDate = nil;
    [super dealloc];
    
}

@end
