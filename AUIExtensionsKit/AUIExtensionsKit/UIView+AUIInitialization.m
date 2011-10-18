//
//  UIView+AUIInitialization.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/18/11.
//  Copyright 2011 Any.do. All rights reserved.
//

#import "UIView+AUIInitialization.h"


@implementation UIView (AUIInitialization)

+(UIView *) viewWithNibName:(NSString *)nibName owner:(NSObject *)owner {
    
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:owner options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    id customView = nil;
    NSObject* nibItem = nil;
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ([nibItem isKindOfClass:[self class]]) {
            customView = nibItem;
            break;
        }
    }
    return customView;
}

@end
