//
//  NSDate+AUIExtensionsKit.m
//  AUIExtensionsKit
//
//  Created by Adam Siton on 9/4/11.
//

#import "NSDate+AUIExtensionsKit.h"

@implementation NSDate (AUIComponents)

-(NSDate *) dateByAddingCalendarUnit:(NSCalendarUnit)calendarUnit andCount:(NSInteger) count
{
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    switch (calendarUnit) {
        case NSSecondCalendarUnit:
            [comp setSecond:count];
            break; 
        case NSMinuteCalendarUnit:
            [comp setMinute:count];
            break; 
        case NSHourCalendarUnit:
            [comp setHour:count];
            break; 
        case NSDayCalendarUnit:
            [comp setDay:count];
            break;  
        case NSWeekCalendarUnit:
            [comp setWeek:count];
            break; 
        case NSWeekdayCalendarUnit:
            [comp setWeekday:count];
            break;
        case NSWeekdayOrdinalCalendarUnit:
            [comp setWeekdayOrdinal:count];
            break; 
        case NSMonthCalendarUnit:
            [comp setMonth:count];
            break; 
        case NSYearCalendarUnit:
            [comp setYear:count];
            break; 
        case NSEraCalendarUnit:
            [comp setEra:count];
            break; 
        default:
            break;
    }
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *newDate = [cal dateByAddingComponents:comp toDate:self options:0];
    [comp release];
    return newDate;
}

@end
