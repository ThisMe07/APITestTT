//
//  NSDate+Extension.h
//  ItemDemo
//
//  Created by 悦生活 on 17/1/4.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Time = 0,        /// yyyy-MM-dd HH:mm
    OnlyTime,       /// HH:mm
    GTM,            /// yyyy-MM-dd HH:mm:ss
    Day             /// yyyy-MM-dd
}DateFormatterStr;

@interface NSDate (Extension)

+ (NSString *)dayOfWeek;
/** 今天的开始时间 */
+ (NSDate *)startOfToday;
/** 本月的开始时间 */
+ (NSDate *)startOfMonth;

- (NSString *)dateToString:(DateFormatterStr) formatter;

@end
