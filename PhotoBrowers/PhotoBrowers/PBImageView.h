//
//  PBImageView.h
//  PhotoBrowers
//
//  Created by HLH on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^imageViewBlock)(UIImage *image);
@interface PBImageView : UIImageView
@property (nonatomic,assign) NSInteger index;
@property (nonatomic,strong) imageViewBlock imageViewBlock;
- (void)setImageWithUrl:(NSString *)urlStr;
@end
