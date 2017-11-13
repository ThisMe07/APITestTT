//
//  MyCustomUIKit.h
//  MyCustomFramework
//
//  Created by 悦生活 on 2017/2/28.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LabelHelper;

typedef LabelHelper* (^textTitle)(NSString *textTitle);
typedef LabelHelper* (^textColor)(UIColor *textColor);
typedef LabelHelper* (^labelFont)(UIFont* labelFont);
typedef LabelHelper* (^numberOfLine)(int numberOfLine);
typedef LabelHelper* (^backgroundColor)(UIColor *backgroundColor);
typedef LabelHelper* (^textAlignment)(NSTextAlignment textAlignment);

@interface LabelHelper : NSObject

+ (id)makeCustomUI:(void(^)(LabelHelper *label))block;

@property (nonatomic, strong, readonly)textTitle textTitle;
@property (nonatomic, strong, readonly)textColor textColor;
@property (nonatomic, strong, readonly)labelFont labelFont;
@property (nonatomic, strong, readonly)numberOfLine numberOfLine;
@property (nonatomic, strong, readonly)backgroundColor backgroundColor;
@property (nonatomic, strong, readonly)textAlignment textAlignment;

@end


@class ButtonHelper;

typedef ButtonHelper* (^buttonType)(UIButtonType buttonType);
typedef ButtonHelper* (^btnBackgroundColor)(UIColor *backgroundColor);
typedef ButtonHelper* (^btnTextTitle)(NSString *textTitle);
typedef ButtonHelper* (^btnTextColor)(UIColor *textColor);
typedef ButtonHelper* (^btnFont)(UIFont* btnFont);
typedef ButtonHelper* (^btnTextEdgeInsets)(UIEdgeInsets textEdgeInsets);
typedef ButtonHelper* (^btnImage)(UIImage * image);
typedef ButtonHelper* (^btnImageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
typedef ButtonHelper* (^btnAction)(SEL action, id target);

@interface ButtonHelper : NSObject

+ (UIButton *)makeCustomUI:(void(^)(ButtonHelper *button))block buttonType:(UIButtonType) buttonType;

@property (nonatomic, strong, readonly)btnTextTitle textTitle;
@property (nonatomic, strong, readonly)btnTextColor textColor;
@property (nonatomic, strong, readonly)btnFont btnFont;
@property (nonatomic, strong, readonly)btnImage image;
@property (nonatomic, strong, readonly)btnImageEdgeInsets imageEdgeInsets;
@property (nonatomic, strong, readonly)btnTextEdgeInsets textEdgeInsets;
@property (nonatomic, strong, readonly)btnBackgroundColor backgroundColor;
@property (nonatomic, strong, readonly)btnAction action;

@end


@class TextFieldHelper;

typedef TextFieldHelper* (^tfBackgroundColor)(UIColor *backgroundColor);
typedef TextFieldHelper* (^tfTextTitle)(NSString *textTitle);
typedef TextFieldHelper* (^placeholder)(NSString *placeholder);
typedef TextFieldHelper* (^tfTextFont)(UIFont* btnFont);
typedef TextFieldHelper* (^secureTextEntry)(BOOL secureTextEntry);
typedef TextFieldHelper* (^clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
typedef TextFieldHelper* (^keyType)(UIKeyboardType keyType);
typedef TextFieldHelper* (^returnType)(UIReturnKeyType returnType);

@interface TextFieldHelper : NSObject

+ (UITextField *)makeCustomUI:(void(^)(TextFieldHelper *textField))block;

@property (nonatomic, strong, readonly)tfTextTitle textTitle;
@property (nonatomic, strong, readonly)placeholder placeholder;
@property (nonatomic, strong, readonly)tfTextFont tfTextFont;
@property (nonatomic, strong, readonly)secureTextEntry secureText;
@property (nonatomic, strong, readonly)clearsOnBeginEditing clearsOnBeginEditing;
@property (nonatomic, strong, readonly)keyType keyType;
@property (nonatomic, strong, readonly)returnType returnType;
@property (nonatomic, strong, readonly)tfBackgroundColor tfBackgroundColor;

@end


@class SliderHelper;

typedef SliderHelper* (^minimumValue)(float minimumValue);
typedef SliderHelper* (^maximumValue)(float maximumValue);
typedef SliderHelper* (^value)(float value);
typedef SliderHelper* (^currentThumbImage)(UIImage* currentImg);
typedef SliderHelper* (^currentMinimumTrackImage)(UIImage* currentImg);
typedef SliderHelper* (^currentMaximumTrackImage)(UIImage* currentImg);

@interface SliderHelper : NSObject

+ (UISlider *)makeCustomUI:(void(^)(SliderHelper *slider))block;

@property (nonatomic, strong, readonly)minimumValue minimumValue;
@property (nonatomic, strong, readonly)maximumValue maximumValue;
@property (nonatomic, strong, readonly)value value;
@property (nonatomic, strong, readonly)currentThumbImage currentThumbImage;
@property (nonatomic, strong, readonly)currentMinimumTrackImage currentMinimumTrackImage;
@property (nonatomic, strong, readonly)currentMaximumTrackImage currentMaximumTrackImage;

@end


@class ProgressViewHelper;

typedef ProgressViewHelper* (^progressViewStyle)(UIProgressViewStyle progressViewStyle);
typedef ProgressViewHelper* (^progress)(float progress);
typedef ProgressViewHelper* (^progressTintColor)(UIColor* progressColor);
typedef ProgressViewHelper* (^trackTintColor)(UIColor* trackColor);
typedef ProgressViewHelper* (^progressImage)(UIImage* progressImage);
typedef ProgressViewHelper* (^trackImage)(UIImage* trackImage);

@interface ProgressViewHelper : NSObject

+ (UIProgressView *)makeCustomUI:(void(^)(ProgressViewHelper *progressView))block;

@property (nonatomic, strong, readonly)progressViewStyle progressViewStyle;
@property (nonatomic, strong, readonly)progress progress;
@property (nonatomic, strong, readonly)progressTintColor progressColor;
@property (nonatomic, strong, readonly)trackTintColor trackColor;
@property (nonatomic, strong, readonly)progressImage progressImage;
@property (nonatomic, strong, readonly)trackImage trackImage;

@end


@class TextViewHelper;

typedef TextViewHelper* (^tvTextColor)(UIColor* textColor);
typedef TextViewHelper* (^tvTextFont)(UIFont* tvTextFont);
typedef TextViewHelper* (^tvBackgroundColor)(UIColor* bgColor);
typedef TextViewHelper* (^keyboardType)(UIKeyboardType keyType);
typedef TextViewHelper* (^returnKeyType)(UIReturnKeyType returnType);

@interface TextViewHelper : NSObject

+ (UITextView *)makeCustomUI:(void(^)(TextViewHelper *textView))block;

@property (nonatomic, strong, readonly)tvTextColor tvTextColor;
@property (nonatomic, strong, readonly)tvTextFont tvTextFont;
@property (nonatomic, strong, readonly)tvBackgroundColor tvBackgroundColor;
@property (nonatomic, strong, readonly)keyboardType keyboardType;
@property (nonatomic, strong, readonly)returnKeyType returnKeyType;

@end



