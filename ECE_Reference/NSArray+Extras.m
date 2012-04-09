//
//  NSArray+Extras.m
//  ECE_Reference
//
//  Created by Felix Tang on 12-04-06.
//  Copyright (c) 2012 UBC. All rights reserved.
//

//
// Adapted from: http://blog.jayway.com/2009/03/28/adding-sorted-inserts-to-uimutablearray/
//

#import "NSArray+Extras.h"

@implementation NSArray (Extras)

// binary search
-(NSUInteger)indexForInsertingObject:(id)anObject sortedUsingBlock:(compareBlock)compare {
    NSUInteger index = 0;
    NSUInteger topIndex = [self count];
    while (index < topIndex) {
        NSUInteger midIndex = (index + topIndex) / 2;
        id testObject = [self objectAtIndex:midIndex];
        if (compare(anObject, testObject) < 0) {
            index = midIndex + 1;
        } else {
            topIndex = midIndex;
        }
    }
    return index;
}

@end
