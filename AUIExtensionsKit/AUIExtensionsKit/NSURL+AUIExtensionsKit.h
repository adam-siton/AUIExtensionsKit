//
//  NSURL+AUIExtensionsKit.h
//  AUIExtensionsKit
//
//  Created by Adam Siton on 10/23/11.
//

#import <Foundation/Foundation.h>

@interface NSURL (Additions)

- (NSURL *)URLByAppendingQueryString:(NSString *)queryString;
- (NSURL *)URLByAppendingQueryStringValuesFromDictionary:(NSDictionary *)queryStringValues;

@end

@interface NSString (URLAdditions)

- (NSString *)stringByUrlEncoding;

@end