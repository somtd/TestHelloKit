//
//  HKViewController.m
//  TestHelloKit
//
//  Created by SOMTD on 2013/06/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "HKViewController.h"
#import <HelloKit/HelloKit.h>
#import "UIImage+HelloKit.h"


@interface HKViewController ()
@property(nonatomic, strong) UIImageView *helloView;

@end

@implementation HKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    HelloKit *hello = [HelloKit new];
    NSLog(@"Hello? :%@",[hello sayHello]);
    
    // Case : without xib
    
    /****** Use HelloKit Utility ******/
    UIImage *helloImage        = [UIImage helloImageNamed:@"hello_title.png"];
    
    /****** Without Use HelloKit Utility ******/
//    NSString *bundlePath       = [[NSBundle mainBundle] pathForResource:@"HelloKit" ofType:@"bundle"];
//    NSString *imagePath        = [bundlePath stringByAppendingFormat:@"/%@", @"hello_title.png"];
//    UIImage *helloImage        = [UIImage imageWithContentsOfFile:imagePath];
    
    _helloView                 = [[UIImageView alloc]initWithImage:helloImage];
    _helloView.frame           = CGRectMake(40, 120, 240, 120);
    _helloView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_helloView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
