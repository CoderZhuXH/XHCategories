//
//  UIColor+XHAdd.h
//  XHCategoriesExample
//
//  Created by xiaohui on 16/5/19.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <UIKit/UIKit.h>

#define HEXColor(colorV) [UIColor xh_colorWithHexColorString:@#colorV]
#define HEXColorA(colorV,a) [UIColor xh_colorWithHexColorString:@#colorV alpha:a];

@interface UIColor (XHAdd)

/**
 *  十六进制颜色
 */
+ (UIColor *)xh_colorWithHexColorString:(NSString *)hexColorString;


/**
 *  十六进制颜色:含alpha
 */
+ (UIColor *)xh_colorWithHexColorString:(NSString *)hexColorString alpha:(float)alpha;

@end
