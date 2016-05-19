//
//  UIImage+XHAdd.h
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import <UIKit/UIKit.h>

@interface UIImage (XHAdd)

/**
 *  颜色生成图片
 *
 *  @param color 颜色
 *
 *  @return UIImage
 */
+(UIImage *)xh_imageWithColor:(UIColor *)color;

/**
 *  截屏
 */
+(UIImage *)xh_cutScreen;
/**
 *  获取启动图片
 */
+(UIImage *)xh_launchImage;

/**
 *  图片缩放到指定大小尺寸
 *  @param size 尺寸
 *
 *  @return 缩放后图片
 */
- (UIImage *)xh_scaleTosize:(CGSize)size;

/**
 *  保存图片到相册
 */
-(void)xh_savePhotosAlbum;
/**
 *  保存图片到沙盒
 *
 *  @param imgName 存储文件名
 */
-(void)xh_saveSandBoxWithImgName:(NSString *)imgName;

/**
 *  获取图片保存到沙盒路径
 */
+(NSString *)xh_imageSavePath;
@end
