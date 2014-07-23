//
//  NSFlipsideViewController.h
//  SampleUtilityApp
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NSFlipsideViewController;

@protocol NSFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(NSFlipsideViewController *)controller;
@end

@interface NSFlipsideViewController : UIViewController

@property (weak, nonatomic) id <NSFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
