//
//  NSArray+AUIExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/4/11.
//

#import "NSArray+AUIExtensionsKit.h"


@implementation NSArray (AUIObjectManipulation)

-(id) firstObject 
{
    if (self.count > 0)
        return [self objectAtIndex:0];
    else
        return nil;
}

@end
