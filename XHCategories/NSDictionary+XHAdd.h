//
//  NSDictionary+XHAdd.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (XHAdd)


#pragma mark-转换
/**
 *  字典->JSON字符串
 *
 *  @return 字符串
 */
-(NSString *)xh_toJSONString;

/**
 *  字典->NSData
 *
 *  @return NSData
 */
-(NSData *)xh_toData;
@end
