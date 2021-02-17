//
//  UIButton+QYMaker.h
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (QYMaker)

/**初始化custom按钮*/
+ (instancetype)customButton;
/**初始化system按钮*/
+ (instancetype)systemButton;


/**是否可用*/
@property (nonatomic,assign,readonly) UIButton *(^mk_Enabled)(BOOL value);
/** 是否允许交互*/
@property (nonatomic,assign,readonly) UIButton *(^mk_UserInteractionEnabled)(BOOL value);
/** 是否透明*/
@property (nonatomic,assign,readonly) UIButton *(^mk_Alpha)(CGFloat value);
/**是否隐藏*/
@property (nonatomic,assign,readonly) UIButton *(^mk_Hidden)(BOOL value);
/**背景色*/
@property (nonatomic,strong,readonly) UIButton *(^mk_BackgroundColor)(UIColor *value);
/**frame*/
@property (nonatomic,assign,readonly) UIButton *(^mk_Frame)(CGRect value);
/**字体*/
@property (nonatomic,copy,readonly) UIButton *(^mk_Font)(UIFont *value);
/**字号*/
@property (nonatomic,assign,readonly) UIButton *(^mk_FontSize)(CGFloat value);
/**普通状态文字颜色*/
@property (nonatomic,strong,readonly) UIButton *(^mk_NormalTextColor)(UIColor *value);
/**选中状态文字颜色*/
@property (nonatomic,strong,readonly) UIButton *(^mk_SelectedTextColor)(UIColor *value);
/**选中状态文字颜色*/
@property (nonatomic,strong,readonly) UIButton *(^mk_HighlightedTextColor)(UIColor *value);
/**Disabled 文字颜色*/
@property (nonatomic,strong,readonly) UIButton *(^mk_DisabledTextColor)(UIColor *value);
/**自适应宽高*/
@property (nonatomic,copy,readonly) UIButton *(^mk_SizeToFit)(void);
/**普通状态image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_NormalImage)(UIImage *value);
/**选中状态image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_SelectedImage)(UIImage *value);
/**高亮状态image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_HighlightedImage)(UIImage *value);
/**Disabled状态image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_DisabledImage)(UIImage *value);
/**普通状态背景image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_NormalBackgroundImage)(UIImage *value);
/**选中状态背景Image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_SelectedBackgroundImage)(UIImage *value);
/**Highlighted状态背景Image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_HighlightedBackgroundImage)(UIImage *value);
/**Disabled状态背景Image*/
@property (nonatomic,strong,readonly) UIButton *(^mk_DisabledBackgroundImage)(UIImage *value);
/**普通状态文字*/
@property (nonatomic,copy,readonly) UIButton *(^mk_NormalText)(NSString *value);
/**选中状态文字*/
@property (nonatomic,copy,readonly) UIButton *(^mk_SelectedText)(NSString *value);
/**高亮状态文字*/
@property (nonatomic,copy,readonly) UIButton *(^mk_HighlightedText)(NSString *value);
/**不可点击状态文字*/
@property (nonatomic,copy,readonly) UIButton *(^mk_DisabledText)(NSString *value);
/**image偏移量*/
@property (nonatomic,assign,readonly) UIButton *(^mk_ImageEdgeInsets)(UIEdgeInsets value);
/**title偏移量*/
@property (nonatomic,assign,readonly) UIButton *(^mk_TitleEdgeInsets)(UIEdgeInsets value);
/**content偏移量*/
@property (nonatomic,assign,readonly) UIButton *(^mk_ContentEdgeInsets)(UIEdgeInsets value);
/**垂直方向布局方式*/
@property (nonatomic,assign,readonly) UIButton *(^mk_ContentVerticalAlignment)(UIControlContentHorizontalAlignment value);
/**水平方向布局方向*/
@property (nonatomic,assign,readonly) UIButton *(^mk_ContentHorizontalAlignment)(UIControlContentVerticalAlignment value);
/**点击事件selector*/
@property (nonatomic,copy,readonly) UIButton *(^mk_Selector)(id target, SEL sel, UIControlEvents controevents);

/**圆角*/
@property (nonatomic,assign,readonly) UIButton *(^mk_CornerRadius)(CGFloat value);
/**加到父控件*/
@property (nonatomic,copy,readonly) UIButton *(^mk_AddTo)(UIView *value);
/**完成block*/ 
@property (nonatomic,copy,readonly) UIButton *(^mk_Completed)(void(^value)(UIButton *));

@end

NS_ASSUME_NONNULL_END
