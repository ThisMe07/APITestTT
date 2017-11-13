//
//  MyCustomUIKit.m
//  MyCustomFramework
//
//  Created by 悦生活 on 2017/2/28.
//  Copyright © 2017年 ICE. All rights reserved.
//

#import "MyCustomUIKit.h"

#pragma mark ======== LabelHelper
@interface LabelHelper ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation LabelHelper

+ (UILabel *)makeCustomUI:(void(^)(LabelHelper *helper))block
{
    if (block) {
        LabelHelper *helper = [[LabelHelper alloc] init];
        helper.label = [[UILabel alloc] init];
        block(helper);
        return helper.label;
    }
    return nil;
}

- (textTitle)textTitle
{
    return ^(NSString * textTitle){
        self.label.text = textTitle;
        return self;
    };
}

- (textColor)textColor
{
    return ^(UIColor * textColor){
        self.label.textColor = textColor;
        return self;
    };
}

- (labelFont)labelFont
{
    return ^(UIFont* labelFont){
        self.label.font = labelFont;
        return self;
    };
}

- (numberOfLine)numberOfLine
{
    return ^(int numberOfLine){
        self.label.numberOfLines = numberOfLine;
        return self;
    };
}

@end

#pragma mark ======== ButtonHelper
@interface ButtonHelper ()

@property (nonatomic, retain) UIButton *btn;

@end

@implementation ButtonHelper

+ (UIButton *)makeCustomUI:(void(^)(ButtonHelper *button))block buttonType:(UIButtonType) buttonType
{
    if (block) {
        ButtonHelper *helper = [[ButtonHelper alloc] init];
        helper.btn = [UIButton buttonWithType:buttonType];
        block(helper);
        return helper.btn;
    }
    return nil;
}

- (btnTextTitle)textTitle
{
    return ^(NSString *textTitle){
        [self.btn setTitle:textTitle forState:UIControlStateNormal];
        return self;
    };
}

- (btnTextColor) textColor
{
    return ^(UIColor *textColor){
        [self.btn setTitleColor:textColor forState:UIControlStateNormal];
        return self;
    };
}

- (btnFont) btnFont
{
    return ^(UIFont* textFont){
        self.btn.titleLabel.font = textFont;
        return self;
    };
}

- (btnImage) image
{
    return ^(UIImage *image){
        [self.btn setImage:image forState:UIControlStateNormal];
        return self;
    };
}


- (btnImageEdgeInsets) imageEdgeInsets
{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.btn.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (btnTextEdgeInsets) textEdgeInsets
{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.btn.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (btnBackgroundColor) backgroundColor
{
    return ^(UIColor *bgColor){
        self.btn.backgroundColor = bgColor;
        return self;
    };
}

- (btnAction) action
{
    return ^(SEL action, id target){
        [self.btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

@end

#pragma mark ======== TextFieldHelper
@interface TextFieldHelper ()

@property (nonatomic, retain) UITextField *textField;

@end

@implementation TextFieldHelper

+ (UITextField *)makeCustomUI:(void(^)(TextFieldHelper *textField))block
{
    TextFieldHelper *helper = [[TextFieldHelper alloc] init];
    helper.textField = [[UITextField alloc] init];
    block(helper);
    return helper.textField;
}

- (tfTextTitle) textTitle
{
    return ^(NSString *textTitle){
        self.textField.text = textTitle;
        return self;
    };
}

- (placeholder) placeholder
{
    return ^(NSString *placeholder){
        self.textField.placeholder = placeholder;
        return self;
    };
}

- (tfTextFont) tfTextFont
{
    return ^(UIFont* textFont){
        self.textField.font = textFont;
        return self;
    };
}

- (secureTextEntry) secureText
{
    return ^(BOOL secureText){
        self.textField.secureTextEntry = secureText;
        return self;
    };
}

- (clearsOnBeginEditing) clearsOnBeginEditing
{
    return ^(BOOL clearsOnBeginEditing){
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (keyType) keyType
{
    return ^(UIKeyboardType keyType){
        self.textField.keyboardType = keyType;
        return self;
    };
}

- (returnType) returnType
{
    return ^(UIReturnKeyType returnKeyType){
        self.textField.returnKeyType = returnKeyType;
        return self;
    };
}

- (tfBackgroundColor) tfBackgroundColor
{
    return ^(UIColor* bgColor){
        self.textField.backgroundColor = bgColor;
        return self;
    };
}

@end


#pragma mark ======== SliderHelper
@interface SliderHelper ()

@property (nonatomic, retain) UISlider *slider;

@end

@implementation SliderHelper

+ (UISlider *)makeCustomUI:(void(^)(SliderHelper *slider))block
{
    SliderHelper *helper = [[SliderHelper alloc] init];
    helper.slider = [[UISlider alloc] init];
    block(helper);
    return helper.slider;
}

- (minimumValue) minimumValue
{
    return ^(float minimumValue){
        self.slider.minimumValue = minimumValue;
        return self;
    };
}

- (maximumValue) maximumValue
{
    return ^(float maximumValue){
        self.slider.maximumValue = maximumValue;
        return self;
    };
}

- (value) value
{
    return ^(float value){
        self.slider.value = value;
        return self;
    };
}

- (currentThumbImage) currentThumbImage
{
    return ^(UIImage * currentThumbImage){
        [self.slider setThumbImage:currentThumbImage forState:UIControlStateNormal];
        return self;
    };
}

- (currentMinimumTrackImage) currentMinimumTrackImage
{
    return ^(UIImage * currentMinimumTrackImage){
        [self.slider setMinimumTrackImage:currentMinimumTrackImage forState:UIControlStateNormal];
        return self;
    };
}

- (currentMaximumTrackImage) currentMaximumTrackImage
{
    return ^(UIImage * currentMaximumTrackImage){
        [self.slider setMaximumTrackImage:currentMaximumTrackImage forState:UIControlStateNormal];
        return self;
    };
}

@end

#pragma mark ======== SliderHelper
@interface ProgressViewHelper ()

@property (nonatomic, retain) UIProgressView *progressView;

@end

@implementation ProgressViewHelper

+ (UIProgressView *)makeCustomUI:(void(^)(ProgressViewHelper *progressView))block
{
    ProgressViewHelper *helper = [[ProgressViewHelper alloc] init];
    helper.progressView = [[UIProgressView alloc] init];
    block(helper);
    return helper.progressView;
}

- (progressViewStyle) progressViewStyle
{
    return ^(UIProgressViewStyle progressViewStyle){
        self.progressView.progressViewStyle = progressViewStyle;
        return self;
    };
}

- (progress) progress
{
    return ^(float progress){
        self.progressView.progress = progress;
        return self;
    };
}

- (progressTintColor) progressColor
{
    return ^(UIColor * progressTintColor){
        self.progressView.progressTintColor = progressTintColor;
        return self;
    };
}

- (trackTintColor) trackColor
{
    return ^(UIColor * trackTintColor){
        self.progressView.trackTintColor = trackTintColor;
        return self;
    };
}

- (progressImage) progressImage
{
    return ^(UIImage * progressImage){
        self.progressView.progressImage = progressImage;
        return self;
    };
}

- (trackImage) trackImage
{
    return ^(UIImage * trackImage){
        self.progressView.trackImage = trackImage;
        return self;
    };
}

@end

#pragma mark ======== SliderHelper
@interface TextViewHelper ()

@property (nonatomic, retain) UITextView *textView;

@end

@implementation TextViewHelper

+ (UITextView *)makeCustomUI:(void(^)(TextViewHelper *textView))block
{
    TextViewHelper *helper = [[TextViewHelper alloc] init];
    helper.textView = [[UITextView alloc] init];
    block(helper);
    return helper.textView;
}

@end

