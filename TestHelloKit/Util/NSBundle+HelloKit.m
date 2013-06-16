//
//  NSBundle+HelloKit.m
//  HelloKit
//
//  Created by SOMTD on 2013/06/16.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "NSBundle+HelloKit.h"

@implementation NSBundle (HelloKit)

+ (NSBundle *)helloBundle
{
    static NSBundle *bundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"HelloKit" ofType:@"bundle"];
        bundle = [[NSBundle alloc] initWithPath:path];
    });
    
    return bundle;
}

@end
