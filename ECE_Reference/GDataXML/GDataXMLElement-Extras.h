//
//  GDataXMLElement-Extras.h
//  ECE_Reference
//
//  Created by Felix Tang on 12-04-06.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"

@interface GDataXMLElement_Extras : NSObject

// helper methods for parsing XML
- (GDataXMLElement *)elementForChild:(NSString *)childName;
- (NSString *)valueForChild:(NSString *)childName;

@end
