//
//  UITextField+QYMaker.h
//  CJKTToolExample
//
//  Created by daixingchuang on 2021/2/16.
//  Copyright © 2021 CJKT. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (QYMaker)

/**初始化*/
+ (instancetype)textField;

/** 设置代理*/
@property (nonatomic,copy,readonly) UITextField *(^mk_Delegate)(id <UITextFieldDelegate>);

/**是否可用*/
@property (nonatomic,assign,readonly) UITextField *(^mk_Enabled)(BOOL value);
/**是否允许交互*/
@property (nonatomic,assign,readonly) UITextField *(^mk_UserInteractionEnabled)(BOOL value);
/**是否透明*/
@property (nonatomic,assign,readonly) UITextField *(^mk_Alpha)(CGFloat value);
/**背景色*/
@property (nonatomic,strong,readonly) UITextField *(^mk_BackgroundColor)(UIColor *value);
/**是否隐藏*/
@property (nonatomic,assign,readonly) UITextField *(^mk_Hidden)(BOOL value);
/**frame*/
@property (nonatomic,assign,readonly) UITextField *(^mk_Frame)(CGRect value);


/** 字体*/
@property (nonatomic,copy,readonly) UITextField *(^mk_Font)(UIFont *value);
/**字号*/
@property (nonatomic,copy,readonly) UITextField *(^mk_FontSize)(CGFloat value);
/**是否以加密形式显示*/
@property (nonatomic,assign,readonly) UITextField *(^mk_SecureTextEntry)(Boolean value);
/**是否在开始输入时清空文字*/
@property (nonatomic,assign,readonly) UITextField *(^mk_ClearsOnBeginEditing)(Boolean value);
/**文本*/
@property (nonatomic,copy,readonly) UITextField *(^mk_Text)(NSString *value);
/**文本颜色*/
@property (nonatomic,strong,readonly) UITextField *(^mk_TextColor)(UIColor *value);
/**占位文字*/
@property (nonatomic,copy,readonly) UITextField *(^mk_PlaceHolder)(NSString *value);

/**占位文字颜色*/
@property (nonatomic,strong,readonly) UITextField *(^mk_PlaceHolderColor)(UIColor *value);
/**占位文字字体*/
@property (nonatomic,strong,readonly) UITextField *(^mk_PlaceHolderCFont)(UIFont *value);

/**富文本占位文字*/
@property (nonatomic,copy,readonly) UITextField *(^mk_AttributedPlaceholder)(NSAttributedString *value);

/** return键类型*/
@property (nonatomic,assign,readonly) UITextField *(^mk_ReturnKeyType)(UIReturnKeyType value);
/**边框样式*/
@property (nonatomic,assign,readonly) UITextField *(^mk_BorderStyle)(UITextBorderStyle value);
/**左边视图样式*/
@property (nonatomic,assign,readonly) UITextField *(^mk_LeftViewMode)(UITextFieldViewMode value);
/**删除view显示样式*/
@property (nonatomic,assign,readonly) UITextField *(^mk_ClearButtonMode)(UITextFieldViewMode value);

/**selector*/
@property (nonatomic,copy,readonly) UITextField *(^mk_Selector)(id target, SEL sel, UIControlEvents controevents);
/**圆角*/
@property (nonatomic,assign,readonly) UITextField *(^mk_CornerRadius)(CGFloat value);
/**加到父控件*/
@property (nonatomic,strong,readonly) UITextField *(^mk_AddTo)(UIView *value);
/**完成block*/
@property (nonatomic,copy,readonly) UITextField *(^mk_Completed)(void(^value)(UITextField *));

@end

NS_ASSUME_NONNULL_END
