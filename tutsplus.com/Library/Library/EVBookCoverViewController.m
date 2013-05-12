//
//  EVBookCoverViewController.m
//  Library
//
//  Created by Erik van der Neut on 5/12/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "EVBookCoverViewController.h"

@interface EVBookCoverViewController ()

@end

@implementation EVBookCoverViewController

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

    if (self.bookCover)
    {
        [self.bookCoverView setImage:self.bookCover];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
