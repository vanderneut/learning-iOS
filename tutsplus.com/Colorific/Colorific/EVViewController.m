//
//  EVViewController.m
//  Colorific
//
//  Created by Erik van der Neut on 4/20/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVViewController.h"

@interface EVViewController ()

@end

@implementation EVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender
{
    int r = arc4random() % 255;     // random red
    int g = arc4random() % 255;     // random green
    int b = arc4random() % 255;     // random blue
    
    UIColor *color = [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:1.0];
    [self.view setBackgroundColor:color];
}
@end
