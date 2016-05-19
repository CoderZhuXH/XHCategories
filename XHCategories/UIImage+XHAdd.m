//
//  UIImage+XHAdd.m
//  XHCategorieExample
//
//  Created by xiaohui on 16/5/13.
//  Copyright © 2016年 qiantou. All rights reserved.
//  https://github.com/CoderZhuXH/XHCategories

#import "UIImage+XHAdd.h"

@implementation UIImage (XHAdd)

+(UIImage *)xh_imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
+(UIImage *)xh_cutScreen
{
    
    return [self xh_cutFromView:[UIApplication sharedApplication].keyWindow];
}

+(UIImage *)xh_launchImage
{
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait";//横屏请设置成 @"Landscape"
    NSString *launchImageName = nil;
    NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary* dict in imagesDict)
    {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            launchImageName = dict[@"UILaunchImageName"];
            UIImage *image = [UIImage imageNamed:launchImageName];
            return image;
        }
    }
    NSLog(@"请添加启动图片!");
    return nil;
}
+(UIImage *)xh_cutFromView:(UIView *)view{
    
    //开启图形上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0f);
    
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //在新建的图形上下文中渲染view的layer
    [view.layer renderInContext:context];
    
    [[UIColor clearColor] setFill];
    
    //获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭图形上下文
    UIGraphicsEndImageContext();
    
    return image;
    
}
-(void)xh_savePhotosAlbum
{
    UIImageWriteToSavedPhotosAlbum(self, nil, nil, nil);
}

-(void)xh_saveSandBoxWithImgName:(NSString *)imgName
{
    NSString *documentsDirectory = [UIImage xh_imageSavePath];
    NSString *pictureName;
    if(![imgName hasSuffix:@".png"]||![imgName hasPrefix:@".jpg"])
    {
        pictureName= [NSString stringWithFormat:@"%@.png",imgName];
    }
    NSString *savedImagePath = [documentsDirectory stringByAppendingPathComponent:pictureName];
    NSData *imageData = UIImagePNGRepresentation(self);
    [imageData writeToFile:savedImagePath atomically:YES];//保存照片到沙盒目录
    
}

+(NSString *)xh_imageSavePath
{
    //文件夹路径(路径可根据需求修改)
    NSString *imgPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches/screenshot"];
    NSLog(@"保存路径: %@\n", imgPath);
    //没有该文件夹则创建
    if (![[NSFileManager defaultManager] fileExistsAtPath:imgPath])
    {
        //创建文件夹
        [[NSFileManager defaultManager] createDirectoryAtPath:imgPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return imgPath;

}

- (UIImage *)xh_scaleTosize:(CGSize)size
{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;

}
@end
