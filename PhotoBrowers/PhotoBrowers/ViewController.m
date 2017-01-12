//
//  ViewController.m
//  PhotoBrowers
//
//  Created by HLH on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import "ViewController.h"
#import "PhotoBrowerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PhotoBrowerViewController *controller = [[PhotoBrowerViewController alloc] init];
    [self addChildViewController:controller];
    controller.view.frame = self.view.bounds;
    [self.view addSubview:controller.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
