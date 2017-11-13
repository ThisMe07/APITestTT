//
//  UIColor+Extension.h
//  YueWang
//
//  Created by 悦生活 on 2017/6/12.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

//基本方法
+ (UIColor *)randomColor;
+ (UIColor *)rgbColorWith:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)hexColor:(NSString *)hexStr alpha:(CGFloat)alpha;

//APP颜色
+ (UIColor *)appColor;
+ (UIColor *)appViewBackgroundColor;
+ (UIColor *)appSepColor;
@end
