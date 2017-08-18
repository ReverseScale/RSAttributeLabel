//
//  RSAttributeLabel.h
//  RSAttributeLabel
//
//  Created by WhatsXie on 2017/8/18.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSAttributeLabel : UITextView

/**高亮文字字体大小，默认和普通文本字体大小一致*/
@property (nonatomic, strong) UIFont *highlightFont;

/**高亮文字字体颜色，默认和普通文本颜色相同*/
@property (nonatomic, strong) UIColor *highlightColor;

/**高亮文字点击回调*/
@property (nonatomic, copy) void(^HighlightAction)(NSString *highlightText);

/**文字之间的垂直间距*/
@property (nonatomic, assign) CGFloat lineSpacing;

/**首行缩进*/
@property (nonatomic, assign) CGFloat firstLineHeadIndent;

/**段落之间的间距*/
@property (nonatomic, assign) CGFloat paragraphSpacing;

@end
