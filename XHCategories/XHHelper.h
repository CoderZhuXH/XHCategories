//
//  XHHelper.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <Foundation/Foundation.h>

@interface XHHelper : NSObject


/**
 *  获取app版本号
 */
+(NSString * )getVersion;

/**
 *  版本号比大小
 *
 *  @param newVersion     新版本号
 *  @param currentVersion 当前app版本号
 *
 *  @return BOOL
 */
+(BOOL)newVersion:(NSString *)newVersion moreThanCurrentVersion:(NSString *)currentVersion;

/**
 *  获取AppDisplayName
 */
+(NSString *)getAppDisplayName;

#pragma mark-时间
/**
 *  获取时间戳(13位)
 */
+(NSString *)getTimeStamp;

/**
 *  获取当天的日期：年月日
 */
+ (NSDictionary *)getTodayDate;

/**
 *  时间戳->时间
 *
 *  @param timeStamp 时间戳
 *
 *  @return 时间NSString
 */
+(NSString *)timeWithTimeStamp:(NSString *)timeStamp;
@end
