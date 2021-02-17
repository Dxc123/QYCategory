//
//  UIImageView+QYMaker.m
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/17.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import "UIImageView+QYMaker.h"

@implementation UIImageView (QYMaker)

+ (UIImageView *)imgeView {
 return [[UIImageView alloc] init];
}


- (UIImageView * _Nonnull (^)(BOOL))mk_UserInteractionEnabled {
    return ^(BOOL value) {
        self.userInteractionEnabled = value;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(CGFloat))mk_Alpha {
    return ^(CGFloat value) {
        self.alpha = value;
        return self;
    };
}

- (UIImageView * _Nonnull (^)(BOOL))mk_Hidden {
    return ^(BOOL value) {
        self.hidden = value;
        return self;
    };
}

- (UIImageView *(^)(UIColor *))mk_BackgroundColor {
    return ^ (UIColor *value) {
        self.backgroundColor = value;
        return self;
    };
}

- (UIImageView *(^)(CGRect value))mk_Frame {
    return ^ (CGRect value) {
        self.frame = value;
        return self;
    };
}


- (UIImageView *(^)(UIImage *value))mk_Imge {
    return ^ (UIImage *value) {
        self.image = value;
        return self;
    };
}

- (UIImageView *(^)(UIImage *value))mk_HighlightedImage {
    return ^ (UIImage *value) {
        self.highlightedImage = value;
        return self;
    };
}

- (UIImageView *(^)(UIViewContentMode value))mk_ContentMode {
    return ^ (UIViewContentMode value) {
        self.contentMode = value;
        return self;
    };
}


- (UIImageView *(^)(void))mk_StartAnimating {
    return ^ (void) {
        [self startAnimating];
        return self;
    };
}


- (UIImageView *(^)(void))mk_StopAnimating {
    return ^ (void) {
        [self stopAnimating];
        return self;
    };
}


/// 圆角 CGFloat
- (UIImageView *(^)(CGFloat value))mk_CornerRadius {
    return ^ (CGFloat value) {
        self.layer.cornerRadius = value;
        self.clipsToBounds = true;
        return self;
    };
}
/// 加到父控件
- (UIImageView *(^)(UIView *value))mk_AddTo {
    return ^ (UIView *value) {
        [value addSubview:self];
        return self;
    };
}


- (UIImageView *(^)(void (^)(UIImageView *imgeView))) mk_Completed {
    return ^(void (^value)(UIImageView *imgeView)) {
        value(self);
        return self;
    };
}
@end
