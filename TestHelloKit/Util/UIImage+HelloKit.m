//
//  UIImage+HelloKit.m
//  HelloKit
//
//  Created by SOMTD on 2013/06/16.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "UIImage+HelloKit.h"
#import "NSBundle+HelloKit.h"

@implementation UIImage (HelloKit)

+ (UIImage *)helloImageNamed:(NSString *)name
{
    NSString *path = [[[NSBundle helloBundle] bundlePath] stringByAppendingFormat:@"/%@", name];
    return [UIImage imageWithContentsOfFile:path];
}

@end
