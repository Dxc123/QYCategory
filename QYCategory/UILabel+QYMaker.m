//
//  UILabel+QYMaker.m
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import "UILabel+QYMaker.h"

@implementation UILabel (QYMaker)



+ (instancetype)label {
    return [[self alloc] init];
}



- (UILabel * _Nonnull (^)(BOOL))mk_Enabled {
    return ^(BOOL value) {
        self.enabled = value;
        return self;
    };
}

- (UILabel * _Nonnull (^)(BOOL))mk_UserInteractionEnabled {
    return ^(BOOL value) {
        self.userInteractionEnabled = value;
        return self;
    };
}

- (UILabel * _Nonnull (^)(CGFloat))mk_Alpha {
    return ^(CGFloat value) {
        self.alpha = value;
        return self;
};
}

- (UILabel * _Nonnull (^)(BOOL))mk_Hidden {
    return ^(BOOL value) {
        self.hidden = value;
        return self;
    };
}

/// frame
- (UILabel*(^)(CGRect value))mk_Frame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}

/// 字体
- (UILabel*(^)(UIFont *value))mk_Font {
    return ^ (UIFont *value) {
        self.font = value;
        return self;
    };
}

/// 字号
- (UILabel *(^)(CGFloat value))mk_FontSize {
    return ^ (CGFloat value) {
        self.font = [UIFont systemFontOfSize:value];
        return self;
    };
}


/// 文本
- (UILabel *(^)(NSString *value))mk_Text {
    return ^ (NSString *value) {
        self.text = value;
        return self;
    };
}

/// 富文本
- (UILabel *(^)(NSAttributedString *value))mk_AttributedText {
    return ^ (NSAttributedString *value) {
        self.attributedText = value;
        return self;
    };
}

/// 文本颜色
- (UILabel*(^)(UIColor *value))mk_TextColor {
    return ^ (UIColor *value) {
        self.textColor = value;
        return self;
    };
}

/// 自适应宽高
- (UILabel *(^)(void))mk_SizeToFit {
    return ^{
        [self sizeToFit];
        return self;
    };
}


/// 对齐方式
- (UILabel*(^)(NSTextAlignment value))mk_TextAlignment {
    return ^ (NSTextAlignment value) {
        self.textAlignment = value;
        return self;
    };
}

/// 行数
- (UILabel*(^)(NSInteger value))mk_NumberOfLines {
    return ^ (NSInteger value) {
        self.numberOfLines = value;
        return self;
    };
}

/// 背景色
- (UILabel*(^)(UIColor *value))mk_BackgroundColor {
    return ^ (UIColor *value) {
        self.backgroundColor = value;
        return self;
    };
}

///  换行方式
- (UILabel*(^)(NSLineBreakMode value))mk_LineBreakMode {
    return ^ (NSInteger value) {
        self.lineBreakMode = value;
        return self;
};
}

/// 阴影颜色
- (UILabel*(^)(UIColor *value))mk_ShadowColor {
    return ^ (UIColor *value) {
        self.shadowColor = value;
        return self;
    };
}

/// 偏移尺寸
- (UILabel*(^)(CGSize value))mk_ShadowOffset {
    return ^ (CGSize value) {
        self.shadowOffset = value;
        return self;
    };
}


/// 圆角 CGFloat
- (UILabel *(^)(CGFloat value))mk_CornerRadius {
    return ^ (CGFloat value) {
        self.layer.cornerRadius = value;
        self.clipsToBounds = true;
        return self;
    };
}
/// 加到父控件
- (UILabel *(^)(UIView *value))mk_AddTo {
    return ^ (UIView *value) {
        [value addSubview:self];
        return self;
    };
}

- (UILabel *(^)(void (^)(UILabel *lab))) mk_Completed {
    return ^(void (^value)(UILabel *lab)) {
        value(self);
        return self;
    };
}


@end
