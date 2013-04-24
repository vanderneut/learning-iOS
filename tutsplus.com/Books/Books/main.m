//
//  main.m
//  Books
//
//  Created by Erik van der Neut on 4/21/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool
    {
	    // insert code here...
	    NSLog(@"Hello, Bookstore!");
        
        // Create instance of the Book class:
        Book *book1  = [[Book alloc] init];
	    book1.title  = @"The Hobbit";
        book1.author = @"JRR Tolkien";
        book1.year   = 1937;
        
        Book *book2 = [[Book alloc] init];
        [book2 setTitle:@"The Fellowship of the Ring"];
        [book2 setAuthor:@"JRR Tolkien"];
        [book2 setYear:1954];
        
        NSArray *books = [[NSArray alloc] initWithObjects:book1, book2, nil];
        int numBooks = books ? (int)[books count] : 0;
        
        NSLog(@"Number of books: %i", numBooks);
        for (int i = 0; i < numBooks; i++)
        {
            Book *aBook = [books objectAtIndex:i];
            NSLog(@"%@", [aBook bookInfo]);
        }
	}
    return 0;
}

