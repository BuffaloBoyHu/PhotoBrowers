//
//  PhotoBrowerViewController.m
//  PhotoBrowers
//
//  Created by HLH on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import "PhotoBrowerViewController.h"
#import "PBImageView.h"

@interface PhotoBrowerViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) NSArray *urlArray;
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) PBImageView *imageView;
@end

@implementation PhotoBrowerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.scrollView];
    self.imageView = [[PBImageView alloc] initWithFrame:self.view.bounds];
    [self.imageView setImageWithUrl:[self.urlArray firstObject]];
    [self.scrollView addSubview:self.imageView];
    self.scrollView.contentSize = self.view.bounds.size;
    
    __weak typeof(self) weakSelf = self;
    self.imageView.imageViewBlock = ^(UIImage *image){
        weakSelf.scrollView.contentSize = image.size;
    };
}

- (void)viewDidAppear:(BOOL)animated {
    self.imageView.center = self.scrollView.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _scrollView.minimumZoomScale = 1;
        _scrollView.maximumZoomScale = 2;
        _scrollView.delegate = self;
    }
    return  _scrollView;
}

- (NSArray *)urlArray {
    if (!_urlArray) {
        _urlArray = @[@"http://odvxpvqb8.qnssl.com/%E7%86%8A%E7%8C%AB%E9%95%87/%E6%89%AF%E7%9D%80%E6%B7%A1/_image/%E6%8A%B5%E5%88%B6.jpg",
            @"http://odvxpvqb8.qnssl.com/%E7%86%8A%E7%8C%AB%E9%95%87/%E6%89%AF%E7%9D%80%E6%B7%A1/_image/%E7%8B%BC%E6%9D%A5%E4%BA%86.jpg",@"http://odvxpvqb8.qnssl.com/%E7%86%8A%E7%8C%AB%E9%95%87/%E6%89%AF%E7%9D%80%E6%B7%A1/_image/%E5%AF%BC%E6%B8%B8.jpg"];
    }
    return _urlArray;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _imageView;
}

@end
