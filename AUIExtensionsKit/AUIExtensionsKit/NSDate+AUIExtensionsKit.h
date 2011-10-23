//
//  NSDate+AUIExtensionsKit.h
//  AUIExtensionsKit
//
//  Created by Adam Siton on 9/4/11.
//

#import <Foundation/Foundation.h>

@interface NSDate (AUIComponents)

// Returns a date offsetted by "count" times the calendarUnit.
// i.e. a date of 1/1/11 10:00 offsetted by 2 units of kCFCalendarUnitMonth will return 1/3/11 10:00
-(NSDate *) dateByAddingCalendarUnit:(NSCalendarUnit)calendarUnit andCount:(NSInteger) count;

@end
