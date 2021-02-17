//
//  UIImageView+QYMaker.h
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/17.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (QYMaker)
/**初始化*/
+ (instancetype)imgeView;

/**是否允许交互*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_UserInteractionEnabled)(BOOL value);
/**是否透明*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_Alpha)(CGFloat value);
/**背景色*/
@property (nonatomic,strong,readonly) UIImageView *(^mk_BackgroundColor)(UIColor *value);
/**是否隐藏*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_Hidden)(BOOL value);
/**frame*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_Frame)(CGRect value);

/**set Imge*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_Imge)(UIImage *value);

/**set highlightedImage*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_HighlightedImage)(UIImage *value);

/**contentMode*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_ContentMode)(UIViewContentMode value);

/**startAnimating*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_StartAnimating)(void);

/**stopAnimating*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_StopAnimating)(void);


/** 圆角*/
@property (nonatomic,assign,readonly) UIImageView *(^mk_CornerRadius)(CGFloat value);
/**加到父控件*/
@property (nonatomic,strong,readonly) UIImageView *(^mk_AddTo)(UIView *value);
/**完成block*/
@property (nonatomic,copy,readonly) UIImageView *(^mk_Completed)(void(^value)(UIImageView *imgeView));


@end

NS_ASSUME_NONNULL_END
