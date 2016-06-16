//
//  NSString+XHAdd.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/12.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (XHAdd)

/**
 *  32位MD5加密
 */
@property (nonatomic,copy,readonly) NSString *xh_md5;
/**
 *  SHA1加密
 */
@property (nonatomic,copy,readonly) NSString *xh_sha1;

/**
 *  字符串算高度
 *
 *  @param font  字体
 *  @param width 最大宽度
 *
 *  @return 高度
 */
-(CGFloat)xh_heightByfont:(UIFont *)font width:(CGFloat)width;

/**
 *  字符串算宽度
 *
 *  @param font   字体
 *  @param height 最大高度
 *
 *  @return 宽度
 */
-(CGFloat)xh_widthByFont:(UIFont *)font height:(CGFloat)height;

/**
 *  包含子串
 *
 *  @param string 子串
 *
 *  @return BOOL
 */
-(BOOL)xh_containsSubString:(NSString *)string;

/**
 *  删除子串
 *
 *  @param string 子串
 *
 *  @return BOOL
 */
-(NSString *)xh_deleteSubString:(NSString *)string;

/**
 *  字符串去空格
 *
 *  @return string
 */
-(NSString *)xh_deleteSpace;

/**
 *  字符串替换
 *
 *  @param subString 要被替换的子串
 *  @param newString 新字符串
 *
 *  @return string
 */
-(NSString *)xh_replaceSubString:(NSString *)subString withNewString:(NSString *)newString;

#pragma mark-转换
/**
 *  JSON字符串(字典类型)->字典
 *
 *  @return 字典
 */
-(NSDictionary *)xh_JSONStringToDictionary;

/**
 *  JSON字符串(数组类型)->字典
 *
 *  @return 字典
 */
-(NSArray *)xh_JSONStringToArray;


@end
