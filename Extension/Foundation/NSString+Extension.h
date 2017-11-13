//
//  NSString+Extension.h
//  ItemDemo
//
//  Created by 悦生活 on 17/1/4.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
//手机号验证
- (BOOL)validatePhone;
//邮箱验证
- (BOOL) isValidEmail;
//身份证验证
- (BOOL)verifyIDCardNumber;
// 获取字符串首字母
- (NSString *)firstCharactor;
//空字符串
- (Boolean)validateEmpty;
//隐藏银行卡中间位数
- (NSString *)hideBankCardNum;
//验证纯数字
- (BOOL)validateNum;
//验证密码正确
- (BOOL)validatePwd;
//验证密码连续数字
- (BOOL)validateNumContinue;
//去空格
- (NSString *)trimmingWhitespace
@end
