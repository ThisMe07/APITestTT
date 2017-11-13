//
//  NSDate+Extension.m
//  ItemDemo
//
//  Created by 悦生活 on 17/1/4.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

+ (NSString *)dayOfWeek
{
    NSDate * date = [NSDate date];
    NSArray *weeks = @[@"星期日", @"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六"];
    NSInteger days = (date.timeIntervalSince1970)/86400;
    return weeks[(days - 3) % 7];
}

/**
 今天的开始时间 2016-01-01 00:00:00
 return: NSDate
 */
+ (NSDate *)startOfToday
{
    NSDate * date = [NSDate date];
    return [[NSCalendar currentCalendar] startOfDayForDate:date];
}

/**
 当月的开始时间 2016-01-01 00:00:00
 return: NSDate
 */
+ (NSDate *)startOfMonth
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    calendar.firstWeekday = 2;
    NSDate *beginDate = [NSDate date];
    double interval = 0.0;
    [calendar rangeOfUnit:NSCalendarUnitMonth startDate:&beginDate interval:&interval forDate:[NSDate date]];
    return beginDate;
}

- (NSString *)dateToString:(DateFormatterStr) formatter
{
    NSDateFormatter *df = [NSDateFormatter new];
    switch (formatter) {
        case OnlyTime:   /// HH:mm
            df.dateFormat = @"HH:mm";
            break;
        case GTM:     /// yyyy-MM-dd HH:mm:ss
            df.dateFormat = @"yyyy-MM-dd HH:mm:ss";
            break;
        case Day:     /// yyyy-MM-dd
            df.dateFormat = @"yyyy-MM-dd";
            break;
        default:
            df.dateFormat = @"yyyy-MM-dd HH:mm";
            break;
    }
    return [df stringFromDate:self];
}

@end
