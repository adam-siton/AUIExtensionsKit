//
//  NSURL+AUIExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/23/11.
//

#import "NSURL+AUIExtensionsKit.h"

@implementation NSURL (Additions)

- (NSURL *)URLByAppendingQueryString:(NSString *)queryString {
    if (![queryString length]) {
        return self;
    }
    
    NSString *URLString = [[NSString alloc] initWithFormat:@"%@%@%@", [self absoluteString],
                           [self query] ? @"&" : @"?", queryString];
    NSURL *theURL = [NSURL URLWithString:URLString];
    [URLString release];
    return theURL;
}

- (NSURL *)URLByAppendingQueryStringValuesFromDictionary:(NSDictionary *)queryStringValues
{
    NSMutableString *queryString = [NSMutableString string];
    for (NSString *key in [queryStringValues allKeys])
    {
        [queryString appendFormat:@"%@=%@&",key, [queryStringValues valueForKey:key]];
    }
    // Remove last &
    if (queryStringValues.count > 0)
        [queryString deleteCharactersInRange:NSMakeRange(queryString.length - 1, 1)];
    
    return [self URLByAppendingQueryString:queryString];
}

@end

@implementation NSString (URLAdditions)

- (NSString *)stringByUrlEncoding
{
    CFStringRef encodedStringRef = CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                           (CFStringRef)self,
                                                                           NULL,
                                                                           (CFStringRef)@":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`",
                                                                           kCFStringEncodingUTF8);
    
    NSString *urlEncodedString = [NSString stringWithString:(NSString *)encodedStringRef];
    CFRelease(encodedStringRef);
    return urlEncodedString;
}

@end