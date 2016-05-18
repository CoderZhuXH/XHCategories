//
//  NSData+XHAdd.m
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "NSData+XHAdd.h"

@implementation NSData (XHAdd)

#pragma mark-转换
-(NSString *)xh_toJSONString
{
    
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
-(NSDictionary *)xh_toDictionary
{
    return [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingMutableContainers error:nil];
}
@end
