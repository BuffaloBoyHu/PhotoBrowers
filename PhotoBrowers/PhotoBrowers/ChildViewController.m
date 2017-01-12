//
//  ChildViewController.m
//  PhotoBrowers
//
//  Created by hu lianghai on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import "ChildViewController.h"
#import "PBImageView.h"

@interface ChildViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) PBImageView *imageView;
@end

@implementation ChildViewController
- (instancetype)initWithUrl:(NSString *)urlStr {
    self = [super init];
    if (self) {
        [self.imageView setImageWithUrl:urlStr];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView];
    [self.imageView addSubview:self.imageView];
    __weak typeof(self) weakSelf = self;
    self.imageView.imageViewBlock = ^(UIImage *image) {
        weakSelf.scrollView.contentSize = image.size;
        weakSelf.imageView.center = weakSelf.scrollView.center;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark property setter&getter
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _scrollView.delegate = self;
        _scrollView.minimumZoomScale = 1;
        _scrollView.maximumZoomScale = 3;
    }
    return _scrollView;
}

- (PBImageView *)imageView {
    if (!_imageView) {
        _imageView = [[PBImageView alloc] init];
    }
    return _imageView;
}

@end
