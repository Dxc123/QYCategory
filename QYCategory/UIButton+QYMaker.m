//
//  UIButton+QYMaker.m
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import "UIButton+QYMaker.h"

@implementation UIButton (QYMaker)


+ (instancetype)systemButton {
    return [self buttonWithType:UIButtonTypeSystem];
}

+ (instancetype)customButton {
    return [self buttonWithType:UIButtonTypeCustom];
}

- (UIButton * _Nonnull (^)(BOOL))mk_Enabled {
    return ^(BOOL value) {
        self.enabled = value;
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))mk_UserInteractionEnabled {
    return ^(BOOL value) {
        self.userInteractionEnabled = value;
        return self;
    };
}

- (UIButton * _Nonnull (^)(CGFloat))mk_Alpha {
    return ^(CGFloat value) {
        self.alpha = value;
        return self;
    };
}

- (UIButton * _Nonnull (^)(BOOL))mk_Hidden {
    return ^(BOOL value) {
        self.hidden = value;
        return self;
    };
}

- (UIButton *(^)(UIColor *))mk_BackgroundColor {
    return ^ (UIColor *value) {
        [self setBackgroundColor:value];
        return self;
    };
}

/// frame
- (UIButton*(^)(CGRect value))mk_Frame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}

/// 字体
- (UIButton*(^)(UIFont *value))mk_Font {
    return ^ (UIFont *value) {
        self.titleLabel.font = value;
        return self;
    };
}

/// 字号
- (UIButton *(^)(CGFloat value))mk_FontSize {
    return ^ (CGFloat value) {
        self.titleLabel.font = [UIFont systemFontOfSize:value];
        return self;
    };
}

/// normal 文字
- (UIButton*(^)(NSString *value))mk_NormalText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 文字
- (UIButton*(^)(NSString *value))mk_SelectedText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateSelected];
        return self;
    };
}

/// highlight 文字
- (UIButton*(^)(NSString *value))mk_HighlightedText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))mk_DisabledText {
    return ^ (NSString *value) {
        [self setTitle:value forState:UIControlStateDisabled];
        return self;
    };
}

/// 自适应宽高
- (UIButton *(^)(void))mk_SizeToFit {
    return ^{
        [self sizeToFit];
        return self;
    };
}

/// normal 文字颜色
- (UIButton*(^)(UIColor *value))mk_NormalTextColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 文字颜色
- (UIButton*(^)(UIColor *value))mk_SelectedTextColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateSelected];
        return self;
    };
}

/// Highlighted 文字颜色
- (UIButton*(^)(UIColor *value))mk_HighlightedTextColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateHighlighted];
        return self;
    };
}

/// Disabled 文字颜色
- (UIButton*(^)(UIColor *value))mk_DisabledTextColor {
    return ^ (UIColor *value) {
        [self setTitleColor:value forState:UIControlStateDisabled];
        return self;
    };
}

/// normal 图片
- (UIButton*(^)(UIImage *value))mk_NormalImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 图片
- (UIButton*(^)(UIImage *value))mk_SelectedImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateSelected];
        return self;
    };
}

/// Highlighted 图片
- (UIButton *(^)(UIImage *))mk_HighlightedImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateHighlighted];
        return self;
    };
}

/// Disabled 图片
- (UIButton *(^)(UIImage *))mk_DisabledImage {
    return ^ (UIImage *value) {
        [self setImage:value forState:UIControlStateDisabled];
        return self;
    };
}


/// normal 背景图片
- (UIButton*(^)(UIImage *value))mk_NormalBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateNormal];
        return self;
    };
}

/// selected 背景图片
- (UIButton*(^)(UIImage *value))mk_SelectedBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateSelected];
        return self;
    };
}

/// Highlighted 背景图片
- (UIButton*(^)(UIImage *value))mk_HighlightedBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateHighlighted];
        return self;
    };
}

/// Disabled 背景图片
- (UIButton*(^)(UIImage *value))mk_DisabledBackgroundImage {
    return ^ (UIImage *value) {
        [self setBackgroundImage:value forState:UIControlStateDisabled];
        return self;
    };
}

/// 垂直布局
- (UIButton*(^)(UIControlContentHorizontalAlignment value))mk_ContentVerticalAlignment {
    return ^ (UIControlContentHorizontalAlignment value) {
        self.contentHorizontalAlignment = value;
        return self;
    };
}

/// 水平布局
- (UIButton*(^)(UIControlContentVerticalAlignment value))mk_ContentHorizontalAlignment {
    return ^ (UIControlContentVerticalAlignment value) {
        self.contentVerticalAlignment = value;
        return self;
    };
}

/// image 偏移量
- (UIButton*(^)(UIEdgeInsets value))mk_ImageEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.imageEdgeInsets = value;
        return self;
    };
}

/// title 偏移量
- (UIButton*(^)(UIEdgeInsets value))mk_TitleEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.titleEdgeInsets = value;
        return self;
    };
}

/// 内容 偏移量
- (UIButton*(^)(UIEdgeInsets value))mk_ContentEdgeInsets {
    return ^ (UIEdgeInsets value) {
        self.contentEdgeInsets = value;
        return self;
    };
}

/// 点击事件
- (UIButton *(^)(id target, SEL sel, UIControlEvents controevents))mk_Selector {
    return ^ (id target, SEL sel, UIControlEvents controevents) {
        [self addTarget:target action:sel forControlEvents:controevents];
        return self;
    };
}

- (UIButton *(^)(CGFloat value))mk_CornerRadius {
    return ^ (CGFloat value) {
        self.layer.cornerRadius = value;
        self.clipsToBounds = true;
        return self;
    };
}

- (UIButton *(^)(UIView *value))mk_AddTo {
    return ^ (UIView *value) {
        [value addSubview:self];
        return self;
    };
}

- (UIButton *(^)(void (^)(UIButton *)))mk_Completed {
    return ^(void (^value)(UIButton *)) {
        value(self);
        return self;
    };
}
@end
