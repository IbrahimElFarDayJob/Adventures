//
//  ONViewController.m
//  SimpleBrowser
//
//  Created by Ibrahim EL FAR on 7/23/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import "ONViewController.h"

@interface ONViewController ()

@end

@implementation ONViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadHomeWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)loadWebView:(NSString*)urlString
{
    [_addressTextField setText:urlString];
    NSURL *url = [NSURL URLWithString:_addressTextField.text];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:urlRequest];
}

- (void)loadHomeWebView
{
    NSString *urlString = @"http://www.cnn.com";
    [self loadWebView:urlString];
}

@end
