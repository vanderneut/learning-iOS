//
//  EVViewController.m
//  UIKit
//
//  Created by Erik van der Neut on 4/26/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVViewController.h"

@interface EVViewController ()

@end

@implementation EVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.myLabel setText:@"Please don't touch the button"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender
{
    NSLog(@"Sender Class > %@", [sender class]);
    NSLog(@"Sender Superclass > %@", [sender superclass]);
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    UIColor *color = [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:1.0];
    [self.view setBackgroundColor:color];
}

@end
