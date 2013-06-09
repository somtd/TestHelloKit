//
//  HKViewController.m
//  TestHelloKit
//
//  Created by SOMTD on 2013/06/09.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import "HKViewController.h"
#import <HelloKit/HelloKit.h>

@interface HKViewController ()

@end

@implementation HKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    HelloKit *hello = [HelloKit new];
    NSLog(@"Hello? :%@",[hello sayHello]);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
