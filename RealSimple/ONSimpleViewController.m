//
//  ONSimpleViewController.m
//  RealSimple
//
//  Created by Ibrahim EL FAR on 7/22/14.
//  Copyright (c) 2014 Ibrahim El Far. All rights reserved.
//

#import "ONSimpleViewController.h"

@interface ONSimpleViewController ()

@end

@implementation ONSimpleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self makeButton]
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makeButton
{
    CGRect buttonFrame = CGRectMake(self.view.frame.size.width/2 - 150/2, 30, 150, 50);
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect]
    self.button.frame = buttonFrame;
    [self.button setTitle:@"Hello" forState:UIControlStateNormal]
    [self.button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside]
    [self.view addSubview:self.button]
}

- (void)buttonPressed
{
    NSLog(@"Hello, button");
    if ([self.button.titleLabel.text isEqualToString:@"Hello"]) {
        [self.button setTitle:@"OK" forState:UIControlStateNormal];
        
        //Make a label, add it to the view:
        UILabel *label = [UILabel new];
        label.frame = CGRectMake(0, 100, 320, 22);
        [label setTextAlignment:NSTextAlignmentCenter];
        label.text = @"Hello, button";
        //set the label's tag so we can easily find it later:
        label.tag = 1;
        [self.view addSubview:label];
    } else {
        [self.button setTitle:@"Hello" forState:UIControlStateNormal];
        //find the label and remove it from the view.
        //because "label" was local to the above if block,
        //it is deleted from memory.
        for (UIView *view in self.view.subviews) {
            if (view.tag == 1) {
                [view removeFromSuperview];
            }
        }
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
