//
//  NSDataViewController.h
//  SamplePageBasedApp
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

@end
