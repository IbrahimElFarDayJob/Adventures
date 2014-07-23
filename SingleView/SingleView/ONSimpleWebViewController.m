//
//  ONViewController.m
//  SingleView
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import "ONSimpleWebViewController.h"

@interface ONSimpleWebViewController ()

@implementation ONSimpleWebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSAssert([self.webView isKindOfClass:[UIWebView class]], @"You webView outlet is not correctly connected.");
    NSAssert(self.back, @"Your back button outlet is not correctly connected");
    NSAssert(self.stop, @"Your stop button outlet is not correctly connected");
    NSAssert(self.refresh, @"Your refresh button outlet is not correctly connected");
    NSAssert(self.forward, @"Your forward button outlet is not correctly connected");
    NSAssert((self.back.target == self.webView) && (self.back.action = @selector(goBack)), @"Your back button action is not connected to goBack.");
    NSAssert((self.stop.target == self.webView) && (self.stop.action = @selector(stopLoading)), @"Your stop button action is not connected to stopLoading.");
    NSAssert((self.refresh  .target == self.webView) && (self.refresh.action = @selector(reload)), @"Your refresh button action is not connected to reload.");
    NSAssert((self.forward.target == self.webView) && (self.forward.action = @selector(goForward)), @"Your forward button action is not connected to goForward.");
    NSAssert(self.webView.scalesPageToFit, @"You forgot to check 'Scales Page to Fit' for your web view.");
    
    [self loadFromString:@"http://www.cnn.com"]
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadFromString:(NSString*)urlString
{
    NSURL *url = [NSURL URLWithString:urlString]
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequet:urlRequest];
}

@end
