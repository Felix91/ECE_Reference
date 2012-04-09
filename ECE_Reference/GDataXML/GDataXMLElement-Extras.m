//
//  GDataXMLElement-Extras.m
//  ECE_Reference
//
//  Created by Felix Tang on 12-04-06.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "GDataXMLElement-Extras.h"

@implementation GDataXMLElement(Extras)

// uses built in elementsForName methods to get all of the child elements of the current node given the specified name
- (GDataXMLElement *)elementForChild:(NSString *)childName {
    NSArray *children = [self elementsForName:childName];            
    if (children.count > 0) {
        GDataXMLElement *childElement = (GDataXMLElement *) [children objectAtIndex:0];
        return childElement;
    } else return nil;
}

// calls elementForChild, then stringValue on the result
- (NSString *)valueForChild:(NSString *)childName {    
    return [[self elementForChild:childName] stringValue];    
}

@end