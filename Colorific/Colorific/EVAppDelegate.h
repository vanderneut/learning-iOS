//
//  EVAppDelegate.h
//  Colorific
//
//  Created by Erik van der Neut on 4/20/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EVViewController;

@interface EVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EVViewController *viewController;

@end
