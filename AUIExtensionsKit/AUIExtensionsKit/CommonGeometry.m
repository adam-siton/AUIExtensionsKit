//
//  CommonGeometry.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/23/11.
//  Copyright 2011 Any.do. All rights reserved.
//

#import "CommonGeometry.h"

CG_INLINE CGRect CGRectSameWithX(CGRect rect, CGFloat newX)
{
    CGRect newRect = rect;
    newRect.origin.x = newX;
    return newRect;
}

CG_INLINE CGRect CGRectSameWithY(CGRect rect, CGFloat newY)
{
    CGRect newRect = rect;
    newRect.origin.y = newY;
    return newRect;
}
CG_INLINE CGRect CGRectSameWithHeight(CGRect rect, CGFloat newHeight)
{
    CGRect newRect = rect;
    newRect.size.height = newHeight;
    return newRect;
}

CG_INLINE CGRect CGRectSameWithWidth(CGRect rect, CGFloat newWidth)
{
    CGRect newRect = rect;
    newRect.size.width = newWidth;
    return newRect;
}