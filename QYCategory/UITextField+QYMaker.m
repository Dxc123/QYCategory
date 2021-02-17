//
//  UITextField+QYMaker.m
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import "UITextField+QYMaker.h"

@implementation UITextField (QYMaker)


+ (UITextField *)textField {
    return [[UITextField alloc] init];
}


- (UITextField *(^)(id<UITextFieldDelegate>))mk_Delegate {
    return ^(id delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))mk_Enabled {
    return ^(BOOL value) {
        self.enabled = value;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))mk_UserInteractionEnabled {
    return ^(BOOL value) {
        self.userInteractionEnabled = value;
        return self;
    };
}

- (UITextField * _Nonnull (^)(CGFloat))mk_Alpha {
    return ^(CGFloat value) {
        self.alpha = value;
        return self;
    };
}

- (UITextField * _Nonnull (^)(BOOL))mk_Hidden {
    return ^(BOOL value) {
        self.hidden = value;
        return self;
    };
}

- (UITextField *(^)(UIColor *))mk_BackgroundColor {
    return ^ (UIColor *value) {
        self.backgroundColor = value;
        return self;
    };
}

- (UITextField *(^)(CGRect value))mk_Frame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}


- (UITextField *(^)(UIFont *value))mk_Font {
    return ^ (UIFont *value) {
        self.font = value;
        return self;
    };
}

/// 字号
- (UITextField *(^)(CGFloat value))mk_FontSize {
    return ^ (CGFloat value) {
        self.font = [UIFont systemFontOfSize:value];
        return self;
    };
}

/// 文字
- (UITextField *(^)(NSString *value))mk_Text {
    return ^ (NSString *value) {
        self.text = value;
        return self;
    };
}

/// 文本颜色
- (UITextField*(^)(UIColor *value))mk_TextColor {
    return ^ (UIColor *value) {
        self.textColor = value;
        return self;
    };
}

- (UITextField *(^)(Boolean value))mk_SecureTextEntry {
    return ^(Boolean value) {
        self.secureTextEntry = value;
        return self;
    };
}

- (UITextField *(^)(Boolean value))mk_ClearsOnBeginEditing {
    return ^(Boolean value) {
        self.clearsOnBeginEditing = value;
        return self;
    };
}

- (UITextField *(^)(NSString *value))mk_PlaceHolder {
    return ^(NSString *value) {
        self.placeholder = value;
        return self;
    };
}

- (UITextField *(^)(UIColor *))mk_PlaceHolderColor {
    return ^(UIColor *value) {
        [self setValue:value forKeyPath:@"_placeholderLabel.textColor"];
        return self;
    };
}

- (UITextField *(^)(UIFont *))mk_PlaceHolderCFont {
    return ^(UIFont *value) {
        [self setValue:value forKeyPath:@"_placeholderLabel.font"];
        return self;
    };
}
///富文本占位文字
- (UITextField *(^)(NSAttributedString *value))mk_AttributedPlaceholder {
    return ^(NSAttributedString *value) {
        self.attributedPlaceholder = value;
        return self;
    };
}


- (UITextField *(^)(UITextBorderStyle value))mk_BorderStyle {
    return ^(UITextBorderStyle value) {
        self.borderStyle = value;
        return self;
    };
}

- (UITextField *(^)(UIReturnKeyType value))mk_ReturnKeyType {
    return ^(UIReturnKeyType value) {
        self.returnKeyType = value;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode value))mk_LeftViewMode {
    return ^(UITextFieldViewMode value) {
        self.leftViewMode = value;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode value))mk_ClearButtonMode {
    return ^(UITextFieldViewMode value) {
        self.clearButtonMode = value;
        return self;
    };
}

- (UITextField *(^)(id, SEL, UIControlEvents))mk_Selector {
    return ^ (id target, SEL sel, UIControlEvents controevents) {
        [self addTarget:target action:sel forControlEvents:controevents];
        return self;
    };
}

- (UITextField *(^)(CGFloat value))mk_CornerRadius {
    return ^ (CGFloat value) {
        self.layer.cornerRadius = value;
        self.clipsToBounds = true;
        return self;
    };
}

- (UITextField *(^)(UIView *value))mk_AddTo {
    return ^ (UIView *value) {
        [value addSubview:self];
        return self;
    };
}

- (UITextField *(^)(void (^)(UITextField *)))mk_Completed {
    return ^(void (^value)(UITextField *)) {
        value(self);
        return self;
    };
}
@end
