//
//  UIView+AUIExtensionsKit.h
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/18/11.
//

#import <Foundation/Foundation.h>


@interface UIView (AUIInitialization)

+(UIView *) viewWithNibName:(NSString *)nibName owner:(NSObject *)owner;

@end

@interface UIView (AUIExtendedGeomatry)

@property CGFloat top;
@property CGFloat bottom;
@property CGFloat left;
@property CGFloat right;

@property CGFloat height;
@property CGFloat width;

@end