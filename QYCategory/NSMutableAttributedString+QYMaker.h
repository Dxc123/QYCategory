//
//  NSMutableAttributedString+QYMaker.h
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (QYMaker)


/// ForegroundColor
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Color)(UIColor *value);

/// Font
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Font)(UIFont *value);
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_FontSize)(CGFloat value);
/// ParagraphStyle
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_LineSpacing)(CGFloat value);

/**段与段之间的间距*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_ParagraphSpacing)(CGFloat value);

/**文本对齐方式*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Alignment)(NSTextAlignment value);

/**首行缩进*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_FirstLineHeadIndent)(CGFloat value);

/**整体缩进(首行除外)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_HeadIndent)(CGFloat value);
/**（右侧缩进或显示宽度）. 可调整文字尾端的缩排距离*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_TailIndent)(CGFloat value);
/**结尾部分的内容省略样式*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_LineBreakMode)(NSLineBreakMode value);

/**最低行高*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MinimumLineHeight)(CGFloat value);

/**最大行高*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MaximumLineHeight)(CGFloat value);

/**从左到右的书写方向（一共➡️三种）*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_BaseWritingDirectiont)(NSWritingDirection value);


/**行间距*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_LineHeightMultiple)(CGFloat value);


/**段首行空白间隔(paragraphSpacingBefore)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_ParagraphSpacingBefore)(CGFloat value);

/**自动断字(hyphenationFactor)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_HyphenationFactor)(float value);

/**默认选项卡间隔 DefaultTabInterval*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_DefaultTabInterval)(CGFloat value);

/**缩小字间距 AllowsDefaultTighteningForTruncation*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_AllowsDefaultTighteningForTruncation)(BOOL value);

/**设置连体属性(Ligature)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Ligature)(NSUInteger value);

/**Kern(字间距)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Kern)(CGFloat value);

/**StrikethroughStyle(删除线样式)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Strikethrough)(NSUnderlineStyle value);

/**StrikethroughColor(设置删除线颜色)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_StrikethroughColor)(UIColor *value);


/**UnderlineStyle(下划线样式)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Underline)(NSUnderlineStyle value);


/**UnderlineColor(设置下划线颜色)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_UnderlineColor)(UIColor *value);

/**StrokeColor(描边颜色)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_StrokeColor)(UIColor *value);

/**BackgroundColor背景色*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_BackgroundColor)(UIColor *value);

/**StrokeWidth(描边颜色宽度)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_StrokeWidth)(CGFloat value);

/**Shadow(阴影)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Shadow)(NSShadow *value);

/**TextEffect(设置文本特殊效果)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_TextEffect)(NSString *value);

/** Attachment(设置附件)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Attachment)(NSTextAttachment *value);

/**Link(链接)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Link)(NSString *value);

/**BaselineOffset(基线偏移量)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_BaselineOffset)(CGFloat value);


/**Obliqueness(设置字体倾斜度)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Obliqueness)(CGFloat value);

/**Expansion(设置字体加粗)*/
@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Expansion)(CGFloat value);
@end


@interface NSMutableAttributedString (QYRange)

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Range)(NSRange value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_From)(NSUInteger value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_To)(NSUInteger value);


@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Location)(NSUInteger value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Length)(NSUInteger value);


@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_Match)(NSString *value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MatchLast)(NSString *value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MatchWithOptions)(NSString *str,NSStringCompareOptions options);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MatchAll)(NSString *value);

@property (nonatomic,strong,readonly) NSMutableAttributedString *(^mk_MatchAllWithOptions)(NSString *str,NSStringCompareOptions options);

@end


@interface KTRangeHelper : NSObject

@property (nonatomic, strong) NSMutableArray *ranges;
@property (nonatomic, assign) NSInteger from;
@property (nonatomic, assign) NSInteger to;
@property (nonatomic, assign) NSInteger location;
@property (nonatomic, assign) NSInteger length;

@end



@interface NSAttributedString (QYMaker)

- (NSMutableAttributedString *)mk_attributedString;

@end

@interface NSString (QYMaker)

- (NSMutableAttributedString *)mk_attributedString;

@end

NS_ASSUME_NONNULL_END
