//
//  UIColor+XHAdd.m
//  XHCategoriesExample
//
//  Created by xiaohui on 16/5/19.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "UIColor+XHAdd.h"

@implementation UIColor (XHAdd)

/**
 *  十六进制颜色
 */
+ (UIColor *)xh_colorWithHexColorString:(NSString *)hexColorString{
    return [self xh_colorWithHexColorString:hexColorString alpha:1.0f];
}

/**
 *  十六进制颜色,含alpha
 */
+ (UIColor *)xh_colorWithHexColorString:(NSString *)hexColorString alpha:(float)alpha{
    
    unsigned int red, green, blue;
    
    NSRange range;
    
    range.length =2;
    
    range.location =0;
    
    [[NSScanner scannerWithString:[hexColorString substringWithRange:range]]scanHexInt:&red];
    
    range.location =2;
    
    [[NSScanner scannerWithString:[hexColorString substringWithRange:range]]scanHexInt:&green];
    
    range.location =4;
    
    [[NSScanner scannerWithString:[hexColorString substringWithRange:range]]scanHexInt:&blue];
    
    UIColor *color = [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green/255.0f)blue:(float)(blue/255.0f)alpha:alpha];
    
    return color;
}

@end
