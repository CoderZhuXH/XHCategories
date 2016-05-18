//
//  NSArray+XHAdd.m
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "NSArray+XHAdd.h"

@implementation NSArray (XHAdd)

#pragma mark-转换
-(NSString *)xh_toJSONString
{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end
