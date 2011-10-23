//
//  UIView+AUExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/18/11.
//

#import "UIView+AUExtensionsKit.h"


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

@implementation UIView (AUIExtendedGeomatry)

-(CGFloat) top
{
    return self.frame.origin.y;
}

-(void) setTop:(CGFloat)top
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = top;
    self.frame = newFrame;
}

-(CGFloat) bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

-(void) setBottom:(CGFloat)bottom
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = bottom - self.frame.size.height;
    self.frame = newFrame;
}

-(CGFloat) left
{
    return self.frame.origin.x;
}

-(void) setLeft:(CGFloat)left
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = left;
    self.frame = newFrame;
}

-(CGFloat) right
{
    return self.frame.origin.x + self.frame.size.width;
}

-(void) setRight:(CGFloat)right
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = right - self.frame.size.width;
    self.frame = newFrame;
}

-(CGFloat) height
{
    return self.frame.size.height;
}

-(void) setHeight:(CGFloat)height
{
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

-(CGFloat) width
{
    return self.frame.size.width;
}

-(void) setWidth:(CGFloat)width
{
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

@end
