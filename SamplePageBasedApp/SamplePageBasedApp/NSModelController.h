//
//  NSModelController.h
//  SamplePageBasedApp
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NSDataViewController;

@interface NSModelController : NSObject <UIPageViewControllerDataSource>

- (NSDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(NSDataViewController *)viewController;

@end
