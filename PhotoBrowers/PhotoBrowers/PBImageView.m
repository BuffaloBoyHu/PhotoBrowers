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
    }];
    
}

@end
