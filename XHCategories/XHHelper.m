//
//  XHHelper.m
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "XHHelper.h"

@implementation XHHelper

/**
 *  获取app版本号
 */
+(NSString * )getVersion
{
    NSString *key = @"CFBundleShortVersionString";
    NSString * version = [NSBundle mainBundle].infoDictionary[key];
    return version;
}

/**
 *  版本号比大小
 *
 *  @param newVersion     新版本号
 *  @param currentVersion 当前app版本号
 *
 *  @return BOOL
 */
+(BOOL)newVersion:(NSString *)newVersion moreThanCurrentVersion:(NSString *)currentVersion
{
    if([currentVersion compare:newVersion options:NSNumericSearch]==NSOrderedAscending)
    {
        return YES;
    }
    return NO;
}

/**
 *  获取AppDisplayName{
 */
+(NSString *)getAppDisplayName{
    
    NSString *key = @"CFBundleDisplayName";
    NSString * appName = [NSBundle mainBundle].infoDictionary[key];
    return appName;
}
#pragma mark-时间
/**
 *  获取时间戳(13位)
 */
+(NSString *)getTimeStamp
{
    UInt64 recordTime = [[NSDate date] timeIntervalSince1970]*1000;
    NSString *time = [NSString stringWithFormat:@"%llu",recordTime];
    return time;
}
/**
 *  时间戳->时间
 */
+(NSString *)timeWithTimeStamp:(NSString *)timeStamp{
    
    double timeInterval = timeStamp.doubleValue;
    if(timeInterval > 140000000000) {
        timeInterval = timeStamp.doubleValue / 1000;
    }
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSString *currentDate = [dateFormatter stringFromDate: detaildate];
    return currentDate;
}

/**
 *  获取当天的日期：年月日
 */
+ (NSDictionary *)getTodayDate
{
    //获取今天的日期
    NSDate *today = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = kCFCalendarUnitYear|kCFCalendarUnitMonth|kCFCalendarUnitDay;
    
    NSDateComponents *components = [calendar components:unit fromDate:today];
    NSString *year = [NSString stringWithFormat:@"%ld", (long)[components year]];
    NSString *month = [NSString stringWithFormat:@"%02ld", (long)[components month]];
    NSString *day = [NSString stringWithFormat:@"%02ld", (long)[components day]];
    
    NSMutableDictionary *todayDic = [[NSMutableDictionary alloc] init];
    [todayDic setObject:year forKey:@"year"];
    [todayDic setObject:month forKey:@"month"];
    [todayDic setObject:day forKey:@"day"];
    
    return todayDic;
}


@end
