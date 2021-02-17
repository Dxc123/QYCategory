//
//  UILabel+QYMaker.h
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (QYMaker)

+ (instancetype)label;

/** 是否可用*/
@property (nonatomic,assign,readonly) UILabel *(^mk_Enabled)(BOOL value);
/**是否允许交互*/
@property (nonatomic,assign,readonly) UILabel *(^mk_UserInteractionEnabled)(BOOL value);
/**是否透明*/
@property (nonatomic,assign,readonly) UILabel *(^mk_Alpha)(CGFloat value);
/**是否隐藏*/ 
@property (nonatomic,assign,readonly) UILabel *(^mk_Hidden)(BOOL value);
/**frame*/
@property (nonatomic,assign,readonly) UILabel *(^mk_Frame)(CGRect value);
/**阴影偏移量*/
@property (nonatomic,assign,readonly) UILabel *(^mk_ShadowOffset)(CGSize value);
/**字体*/
@property (nonatomic,strong,readonly) UILabel *(^mk_Font)(UIFont *value);
/**字号*/
@property (nonatomic,assign,readonly) UILabel *(^mk_FontSize)(CGFloat value);
/**文字颜色*/
@property (nonatomic,strong,readonly) UILabel *(^mk_TextColor)(UIColor *value);
/**阴影文字颜色*/
@property (nonatomic,strong,readonly) UILabel *(^mk_ShadowColor)(UIColor *value);
/** 背景色*/
@property (nonatomic,strong,readonly) UILabel *(^mk_BackgroundColor)(UIColor *value);
/**文本*/
@property (nonatomic,copy,readonly) UILabel *(^mk_Text)(NSString *value);

/**富文本*/
@property (nonatomic,copy,readonly) UILabel *(^mk_AttributedText)(NSAttributedString *value);

/**自适应宽高*/
@property (nonatomic,copy,readonly) UILabel *(^mk_SizeToFit)(void);
/** 行*/
@property (nonatomic,assign,readonly) UILabel *(^mk_NumberOfLines)(NSInteger value);
/**对齐方式*/
@property (nonatomic,strong,readonly) UILabel *(^mk_TextAlignment)(NSTextAlignment value);
/**断句方式*/
@property (nonatomic,assign,readonly) UILabel *(^mk_LineBreakMode)(NSLineBreakMode value);

/** 圆角*/
@property (nonatomic,assign,readonly) UILabel *(^mk_CornerRadius)(CGFloat value);
/**加到父控件*/
@property (nonatomic,strong,readonly) UILabel *(^mk_AddTo)(UIView *value);
/**完成block*/ 
@property (nonatomic,copy,readonly) UILabel *(^mk_Completed)(void(^value)(UILabel *lab));

@end

NS_ASSUME_NONNULL_END
