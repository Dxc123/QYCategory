//
//  NSMutableAttributedString+QYMaker.m
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import "NSMutableAttributedString+QYMaker.h"
#import <objc/runtime.h>

@implementation NSMutableAttributedString (QYMaker)
#pragma mark - Public Methods


- (NSMutableAttributedString *(^)(UIColor * value))mk_Color {
    return ^(UIColor *value) {
        [self addAttributeName:NSForegroundColorAttributeName value:value];
        return self;
    };
}



- (NSMutableAttributedString *(^)(UIFont *value))mk_Font {
    return ^(UIFont *value) {
        [self addAttributeName:NSFontAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_FontSize {
    return ^(CGFloat value) {
        [self addAttributeName:NSFontAttributeName value:[UIFont systemFontOfSize:value]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_LineSpacing {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_ParagraphSpacing {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacing = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSTextAlignment value))mk_Alignment {
    return ^(NSTextAlignment value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_FirstLineHeadIndent {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.firstLineHeadIndent = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_HeadIndent {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.headIndent = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_TailIndent {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.tailIndent = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSLineBreakMode value))mk_LineBreakMode {
    return ^(NSLineBreakMode value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineBreakMode = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_MinimumLineHeight {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.minimumLineHeight = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_MaximumLineHeight {
    return ^(CGFloat maximumLineHeight) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.maximumLineHeight = maximumLineHeight;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSWritingDirection value))mk_BaseWritingDirectiont {
    return ^(NSWritingDirection value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.baseWritingDirection = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_LineHeightMultiple {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineHeightMultiple = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_ParagraphSpacingBefore {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacingBefore = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(float value))mk_HyphenationFactor {
    return ^(float value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.hyphenationFactor = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_DefaultTabInterval {
    return ^(CGFloat value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.defaultTabInterval = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(BOOL value))mk_AllowsDefaultTighteningForTruncation {
    return ^(BOOL value) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.allowsDefaultTighteningForTruncation = value;
        [self addAttributeName:NSParagraphStyleAttributeName value:paragraphStyle];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger value))mk_Ligature {
    return ^(NSUInteger value) {
        [self addAttributeName:NSLigatureAttributeName value:@(value)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_Kern {
    return ^(CGFloat value) {
        [self addAttributeName:NSKernAttributeName value:@(value)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUnderlineStyle value))mk_Strikethrough {
    return ^(NSUnderlineStyle value) {
        [self addAttributeName:NSStrikethroughStyleAttributeName value:@(value)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *value))mk_StrikethroughColor {
    return ^(UIColor * value) {
        [self addAttributeName:NSStrikethroughColorAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUnderlineStyle value))mk_Underline {
    return ^(NSUnderlineStyle value) {
        [self addAttributeName:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:value]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor *value))mk_UnderlineColor {
    return ^(UIColor * value) {
        [self addAttributeName:NSUnderlineColorAttributeName value:value];
        return self;
    };
}


- (NSMutableAttributedString *(^)(UIColor *value))mk_StrokeColor {
    return ^(UIColor *value) {
        [self addAttributeName:NSStrokeColorAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(UIColor * value))mk_BackgroundColor {
    return ^(UIColor *value) {
        [self addAttributeName:NSBackgroundColorAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_StrokeWidth {
    return ^(CGFloat value) {
        [self addAttributeName:NSStrokeWidthAttributeName value:@(value)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSShadow *value))mk_Shadow {
    return ^(NSShadow *value) {
        [self addAttributeName:NSShadowAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *value))mk_TextEffect {
    return ^(NSString *value) {
        [self addAttributeName:NSTextEffectAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSTextAttachment *value))mk_Attachment {
    return ^(NSTextAttachment *value) {
        [self addAttributeName:NSAttachmentAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *value))mk_Link {
    return ^(NSString *value) {
        [self addAttributeName:NSLinkAttributeName value:value];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_BaselineOffset {
    return ^(CGFloat value) {
        [self addAttributeName:NSBaselineOffsetAttributeName value:@(value)];
        return self;
    };
}



- (NSMutableAttributedString *(^)(CGFloat value))mk_Obliqueness {
    return ^(CGFloat value) {
        [self addAttributeName:NSObliquenessAttributeName value:@(value)];
        return self;
    };
}

- (NSMutableAttributedString *(^)(CGFloat value))mk_Expansion {
    return ^(CGFloat value) {
        [self addAttributeName:NSExpansionAttributeName value:@(value)];
        return self;
    };
}

#pragma mark - Private Methods


- (KTRangeHelper *)rangeHelper {
    KTRangeHelper *rangeHelper = objc_getAssociatedObject(self, @selector(rangeHelper));
    if(!rangeHelper) {
        rangeHelper = [[KTRangeHelper alloc] init];
        [rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(0, self.length)]];
        objc_setAssociatedObject(self, @selector(rangeHelper), rangeHelper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return rangeHelper;
}

- (void)addAttributeName:(NSString *)name value:(id)value {
    for (NSValue *range in self.rangeHelper.ranges) {
        [self addAttribute:name value:value range:[range rangeValue]];
    }
}
@end



//@interface NSMutableAttributedString ()
//
//@property (nonatomic, strong) KTRangeHelper *rangeHelper22;
//
//@end

@implementation NSMutableAttributedString (QYRange)

#pragma mark - Public Methods

- (NSMutableAttributedString *(^)(NSRange value))mk_Range {
    return ^(NSRange value) {
        if (value.location < self.length && value.length <= self.length && value.location + value.length <= self.length) {
            [self removeAllRanges];
            [self.rangeHelper.ranges addObject:[NSValue valueWithRange:value]];
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger value))mk_From {
    return ^(NSUInteger value) {
        if (value < self.length) {
            if (self.rangeHelper.to != -1 && value < self.rangeHelper.to) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(value, self.rangeHelper.to - value)]];
            }
            
            self.rangeHelper.from = value;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger value))mk_To {
    return ^(NSUInteger value) {
        if (value <= self.length) {
            if (self.rangeHelper.from != -1 && value > self.rangeHelper.from) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(self.rangeHelper.from, value - self.rangeHelper.from)]];
            }
            
            self.rangeHelper.to = value;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger value))mk_Location {
    return ^(NSUInteger value) {
        if (value < self.length) {
            if (self.rangeHelper.length != -1 && value + self.rangeHelper.length <= self.length) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(value, self.rangeHelper.length)]];
            }
            
            self.rangeHelper.location = value;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSUInteger value))mk_Length {
    return ^(NSUInteger value) {
        if (value <= self.length) {
            if (self.rangeHelper.location != -1 && self.rangeHelper.location + value <= self.length) {
                [self removeAllRanges];
                [self.rangeHelper.ranges addObject:[NSValue valueWithRange:NSMakeRange(self.rangeHelper.location, value)]];
            }
            
            self.rangeHelper.length = value;
        }
        
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString * value))mk_Match {
    return ^(NSString *value) {
        return self.mk_MatchWithOptions(value, 0);
    };
}

- (NSMutableAttributedString *(^)(NSString * value))mk_MatchLast {
    return ^(NSString *value) {
        return self.mk_MatchWithOptions(value, NSBackwardsSearch);
    };
}

- (NSMutableAttributedString *(^)(NSString *str, NSStringCompareOptions options)) mk_MatchWithOptions {
    return ^(NSString *str, NSStringCompareOptions options) {
        NSRange range = [self.string rangeOfString:str options:options];
        [self removeAllRanges];
        [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        return self;
    };
}

- (NSMutableAttributedString *(^)(NSString *value))mk_MatchAll {
    return ^(NSString *value) {
        return self.mk_MatchAllWithOptions(value, 0);
    };
}

- (NSMutableAttributedString *(^)(NSString *str, NSStringCompareOptions options)) mk_MatchAllWithOptions {
    return ^(NSString *substring, NSStringCompareOptions options) {
        NSRange range = [self.string rangeOfString:substring options:options];
        [self removeAllRanges];
        [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        while (range.length != 0) {
            NSInteger location = range.location + range.length;
            NSInteger length = self.length - location;
            range = [self.string rangeOfString:substring options:options range:NSMakeRange(location, length)];
            [self.rangeHelper.ranges addObject:[NSValue valueWithRange:range]];
        }
        
        return self;
    };
}

#pragma mark - Private Methods
- (void)removeAllRanges {
    [self.rangeHelper.ranges removeAllObjects];
}
@end


@implementation KTRangeHelper

- (instancetype)init {
    self = [super init];
    if (self) {
        self.ranges = [NSMutableArray array];
        self.from = -1;
        self.to = -1;
        self.location = -1;
        self.length = -1;
    }
    return self;
}

@end


@implementation NSAttributedString (QYMaker)

- (NSMutableAttributedString *)mk_attributedString {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    return attributedString;
}

@end


@implementation NSString (QYMaker)

- (NSMutableAttributedString *)mk_attributedString {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    return attributedString;
}

@end
