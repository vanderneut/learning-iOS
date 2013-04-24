//
//  Book.h
//  Books
//
//  Created by Erik van der Neut on 4/21/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property int year;
@property NSString *title;
@property NSString *author;
- (NSString *)bookInfo;

@end
