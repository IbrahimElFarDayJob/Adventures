//
//  NSMasterViewController.h
//  SampleMasterDetail
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NSDetailViewController;

@interface NSMasterViewController : UITableViewController

@property (strong, nonatomic) NSDetailViewController *detailViewController;

@end
