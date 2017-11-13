//
//  NSString+Extension.m
//  ItemDemo
//
//  Created by 悦生活 on 17/1/4.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

//手机号验证
- (BOOL)validatePhone {
    NSString *phoneNumberRegex = @"(1)[3578][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]";
    NSPredicate *phoneNumberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneNumberRegex];
    BOOL isValid = [phoneNumberTest evaluateWithObject:self];
    return isValid;
}

//验证纯数字
- (BOOL)validateNum {
    NSScanner* scan = [NSScanner scannerWithString:self];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

//验证连续数字
- (BOOL)validateNumContinue {
   return [@[@"111111", @"222222", @"333333", @"444444", @"555555", @"666666", @"777777", @"888888", @"999999", @"000000", @"123456", @"654321"] containsObject:self];
}

//邮箱验证
- (BOOL) isValidEmail{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:self];
    return isValid;
}

//身份证号
- (BOOL)verifyIDCardNumber;
{
    NSString *IDCardNumber = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([IDCardNumber length] != 18)
    {
        return NO;
    }
    NSString *mmdd = @"(((0[13578]|1[02])(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)(0[1-9]|[12][0-9]|30))|(02(0[1-9]|[1][0-9]|2[0-8])))";
    NSString *leapMmdd = @"0229";
    NSString *year = @"(19|20)[0-9]{2}";
    NSString *leapYear = @"(19|20)(0[48]|[2468][048]|[13579][26])";
    NSString *yearMmdd = [NSString stringWithFormat:@"%@%@", year, mmdd];
    NSString *leapyearMmdd = [NSString stringWithFormat:@"%@%@", leapYear, leapMmdd];
    NSString *yyyyMmdd = [NSString stringWithFormat:@"((%@)|(%@)|(%@))", yearMmdd, leapyearMmdd, @"20000229"];
    NSString *area = @"(1[1-5]|2[1-3]|3[1-7]|4[1-6]|5[0-4]|6[1-5]|82|[7-9]1)[0-9]{4}";
    NSString *regex = [NSString stringWithFormat:@"%@%@%@", area, yyyyMmdd , @"[0-9]{3}[0-9Xx]"];
    
    NSPredicate *regexTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    if (![regexTest evaluateWithObject:IDCardNumber]){
        return NO;
    }
    int summary = ([IDCardNumber substringWithRange:NSMakeRange(0,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(10,1)].intValue) *7+ ([IDCardNumber substringWithRange:NSMakeRange(1,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(11,1)].intValue) *9+ ([IDCardNumber substringWithRange:NSMakeRange(2,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(12,1)].intValue) *10+ ([IDCardNumber substringWithRange:NSMakeRange(3,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(13,1)].intValue) *5+ ([IDCardNumber substringWithRange:NSMakeRange(4,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(14,1)].intValue) *8+ ([IDCardNumber substringWithRange:NSMakeRange(5,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(15,1)].intValue) *4+ ([IDCardNumber substringWithRange:NSMakeRange(6,1)].intValue + [IDCardNumber substringWithRange:NSMakeRange(16,1)].intValue) *2+ [IDCardNumber substringWithRange:NSMakeRange(7,1)].intValue *1 + [IDCardNumber substringWithRange:NSMakeRange(8,1)].intValue *6+ [IDCardNumber substringWithRange:NSMakeRange(9,1)].intValue *3;NSInteger remainder = summary % 11;
    NSString *checkBit = @"";
    NSString *checkString = @"10X98765432";checkBit = [checkString substringWithRange:NSMakeRange(remainder,1)];// 判断校验位
    return [checkBit isEqualToString:[[IDCardNumber substringWithRange:NSMakeRange(17,1)] uppercaseString]];
}

/** 获取字符串首字母 */
- (NSString *)firstCharactor
{
    NSMutableString *str = [NSMutableString stringWithString:self];
    //先转换为带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    NSString *pinYin = [str capitalizedString];
    return [pinYin substringToIndex:1];
}

- (Boolean)validateEmpty {
    if (self.length == 0) {
        return true;
    }
    return false;
}

- (NSString *)hideBankCardNum
{
    if (self.length <= 0) {
        return @"";
    }
    
    return [self stringByReplacingCharactersInRange:NSMakeRange(4, self.length-7) withString:@"*******"];
}

- (BOOL)validatePwd {
    BOOL isContainNum = false;
    BOOL isContainLetter = false;
    
    for (int i = 0; i < [self length]; i++) {
        char commitChar = [self characterAtIndex:i];
//        NSString *temp = [self substringWithRange:NSMakeRange(i,1)];
//        const char *u8Temp = [temp UTF8String];
        if((commitChar>64)&&(commitChar<91)){
            isContainLetter = true;
        }else if((commitChar>96)&&(commitChar<123)){
            isContainLetter = true;
        }else if((commitChar>47)&&(commitChar<58)){
            isContainNum = true;
        }
    }
    return isContainNum && isContainLetter;
}

- (NSString *)trimmingWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
