//
//  PBImageView.m
//  PhotoBrowers
//
//  Created by HLH on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import "PBImageView.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation PBImageView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.userInteractionEnabled = YES;
        self.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}

- (void)setImageWithUrl:(NSString *)urlStr {
    [self sd_setImageWithURL:[NSURL URLWithString:urlStr] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.imageViewBlock(image);
        CGSize screenSize = [UIScreen mainScreen].bounds.size;
        CGSize size = image.size;
        CGFloat ratio = screenSize.width / size.width;
        size.width *= ratio;
        size.height *= ratio;
        self.frame = CGRectMake(0, 0, size.width, size.height);
    }];
    
}

@end
