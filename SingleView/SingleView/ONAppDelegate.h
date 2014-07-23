//
//  ONAppDelegate.h
//  SingleView
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ONSimpleWebViewController.h"

@interface ONAppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow *window;
    ONSimpleWebViewController *viewController;
}

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (strong, nonatomic) IBOutlet ONSimpleWebViewController *viewController;

@end
