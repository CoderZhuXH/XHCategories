//
//  NSArray+XHAdd.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <Foundation/Foundation.h>

@interface NSArray (XHAdd)

#pragma mark-转换

/**
 *  数组->JSON字符串
 *
 *  @return 字符串
 */
-(NSString *)xh_toJSONString;
@end
