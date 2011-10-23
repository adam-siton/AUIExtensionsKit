//
//  NSString+AUIExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/4/11.
//

#import "NSString+AUIExtensionsKit.h"

@implementation NSString (AUISubStrings)

-(NSString *)firstWord
{
    __block NSString *firstWord;
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByWords usingBlock:
     ^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
         firstWord = [substring retain];
         *stop = YES;
     }];
    return [firstWord autorelease];
}

-(NSArray *) allWords
{
    NSMutableArray *words = [NSMutableArray array];
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByWords usingBlock:
     ^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
         [words addObject:substring];
     }];
    return words;
}

@end
