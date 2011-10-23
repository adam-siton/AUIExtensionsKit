//
//  NSData+AUIExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/17/11.
//

#import "NSData+AUIExtensionsKit.h"


@implementation NSData (AUIStringManipulation)

-(NSString *)stringFromData
{
    return [NSString stringWithCString:[self bytes] encoding:NSStringEncodingConversionAllowLossy];
}

@end
