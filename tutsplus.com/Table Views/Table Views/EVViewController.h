//
//  EVViewController.h
//  Table Views
//
//  Created by Erik van der Neut on 4/25/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EVViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property NSArray *fruits;
@property NSDictionary *alphabetizedFruits;

@end
