//
//  NSMainViewController.h
//  SampleUtilityApp
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import "NSFlipsideViewController.h"

@interface NSMainViewController : UIViewController <NSFlipsideViewControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

@end
