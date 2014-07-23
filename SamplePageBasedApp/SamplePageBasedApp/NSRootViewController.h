//
//  NSRootViewController.h
//  SamplePageBasedApp
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSRootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
