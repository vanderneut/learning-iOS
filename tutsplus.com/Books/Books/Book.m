//
//  Book.m
//  Books
//
//  Created by Erik van der Neut on 4/21/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import "Book.h"

@implementation Book

- (NSString *)bookInfo
{
	NSString *bookInfo = [NSString stringWithFormat:@"\"%@\" by %@ (%i)", self.title, self.author, self.year];
    
	return bookInfo;
}

@end
