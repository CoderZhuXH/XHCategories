//
//  NSString+XHAdd.m
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/12.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "NSString+XHAdd.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (XHAdd)

/**
 *  32位MD5加密
 */
-(NSString *)xh_md5{
    
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return [result copy];
}

/**
 *  SHA1加密
 */
-(NSString *)xh_sha1{
    
    const char *cStr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return [result copy];
}

-(CGFloat)xh_heightByfont:(UIFont *)font width:(CGFloat)width
{
    CGRect bounds;
    NSDictionary * parameterDict=[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    bounds=[self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:parameterDict context:nil];
    return bounds.size.height;
}

-(CGFloat)xh_widthByFont:(UIFont *)font height:(CGFloat)height
{
    NSDictionary * dict=[NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
    CGRect rect=[self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.width;
}

-(BOOL)xh_containsSubString:(NSString *)string
{
    if(string==nil) return NO;
    if([self rangeOfString:string].location ==NSNotFound) return NO;
    return YES;
}

-(NSString *)xh_deleteSubString:(NSString *)string
{
    if(string==nil) return self;
    
    return [self stringByReplacingOccurrencesOfString:string withString:@""];
}

-(NSString *)xh_deleteSpace
{
   return[self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

-(NSString *)xh_replaceSubString:(NSString *)subString withNewString:(NSString *)newString
{
    if(subString==nil||newString==nil) return self;
    return [self stringByReplacingOccurrencesOfString:subString withString:newString];
}
#pragma mark-转换
-(NSDictionary *)xh_JSONStringToDictionary
{
    NSData *JSONData = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableLeaves error:nil];
}
-(NSArray *)xh_JSONStringToArray
{
    NSData *JSONData = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingMutableLeaves error:nil];
}
@end
