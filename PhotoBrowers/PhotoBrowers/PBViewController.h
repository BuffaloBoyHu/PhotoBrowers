//
//  PBViewController.h
//  PhotoBrowers
//
//  Created by hu lianghai on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PBViewController : UIPageViewController
- (instancetype)initWithUrls:(NSArray *)urlArray indexStr:(NSString *)indexStr;
- (void)showInViewController:(UIViewController *)viewController;
@end
