//
//  NSData+XHAdd.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <Foundation/Foundation.h>

@interface NSData (XHAdd)
#pragma mark-转换
/**
 *  NSData->JSON字符串
 *
 *  @return 字符串
 */
-(NSString *)xh_toJSONString;

/**
 *  NSData->字典
 *
 *  @return 字典
 */
-(NSDictionary *)xh_toDictionary;
@end
