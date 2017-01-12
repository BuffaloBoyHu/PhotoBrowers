//
//  ChildViewController.h
//  PhotoBrowers
//
//  Created by hu lianghai on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildViewController : UIViewController
@property (nonatomic,assign) NSInteger index;
- (instancetype)initWithUrl:(NSString *)urlStr;
@end
