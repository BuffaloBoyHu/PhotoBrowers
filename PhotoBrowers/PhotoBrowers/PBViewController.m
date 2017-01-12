//
//  PBViewController.m
//  PhotoBrowers
//
//  Created by hu lianghai on 2017/1/12.
//  Copyright © 2017年 胡良海. All rights reserved.
//

#import "PBViewController.h"
#import "ChildViewController.h"

@interface PBViewController ()<UIPageViewControllerDataSource>
@property (nonatomic,assign) NSInteger currentIndex;
@property (nonatomic,strong) NSMutableArray *childControllers;
@end

@implementation PBViewController

- (instancetype)initWithUrls:(NSArray *)urlArray indexStr:(NSString *)indexStr {
    self = [super initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:@{UIPageViewControllerOptionInterPageSpacingKey :@(20)}];
    if (self) {
        self.dataSource = self;
        self.currentIndex = [urlArray indexOfObject:indexStr];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark private function
- (ChildViewController *)createChildViewControllerWithUrl:(NSString *)urlStr {
    
}

#pragma mark UIPageViewControllerDataSource
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSInteger index = [self.childControllers indexOfObject:viewController];
    NSInteger count = [self.childControllers count];
    if (index >= count || index == NSNotFound) {
        return nil;
    }
    index++;
    return [self.childControllers objectAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSInteger index = [self.childControllers indexOfObject:viewController];
    if (index <= 0 || index == NSNotFound) {
        return nil;
    }
    index--;
    return [self.childControllers objectAtIndex:index];
}

#pragma mark property setter&getter 
- (NSMutableArray *)childControllers {
    if (!_childControllers) {
        _childControllers = [NSMutableArray array];
    }
    return _childControllers;
}

@end
