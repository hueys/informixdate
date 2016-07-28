//
//  NSDate+InformixDateConversion.m
//  informixdate
//
//  Created by Steven Huey on 7/28/16.
//  Copyright © 2016 Steve Huey. All rights reserved.
//

#import "NSDate+InformixDateConversion.h"

#define kSecondsPerDay (24 * 60 * 60)

@implementation NSDate (InformixDateConversion)
+ (NSDate*)dateWithInformixDate:(NSInteger)informixDate
{
   return [NSDate dateWithTimeInterval:(informixDate * kSecondsPerDay)
                             sinceDate:[[self class] informixReferenceDate]];
}

+ (NSDate*)informixReferenceDate
{
   NSDateComponents* referenceDateComponents = [[NSDateComponents alloc] init];
   referenceDateComponents.calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
   referenceDateComponents.year = 1899;
   referenceDateComponents.month = 12;
   referenceDateComponents.day = 31;
   referenceDateComponents.hour = 0;
   referenceDateComponents.minute = 0;
   referenceDateComponents.second = 0;
   
   return referenceDateComponents.date;
}
@end
