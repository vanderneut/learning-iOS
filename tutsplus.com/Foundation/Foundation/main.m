//
//  main.m
//  Foundation
//
//  Created by Erik van der Neut on 4/24/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        NSLog(@"NSObject >");
        NSObject *myFirstObject = [[NSObject alloc] init];
        NSLog(@"                 Class: %@", [myFirstObject class]);
        NSLog(@"            Superclass: %@", [myFirstObject superclass]);
        NSLog(@"  Conforms to Protocol: %i", [myFirstObject conformsToProtocol:@protocol(NSObject)]);
        NSLog(@" ");

        NSLog(@"NSNumber >");
        NSNumber *myNumber = [NSNumber numberWithDouble:854736e+13];
        NSLog(@"                 Class: %@", [myNumber class]);
        NSLog(@"            Superclass: %@", [myNumber superclass]);
        NSLog(@"  Conforms to Protocol: %i", [myNumber conformsToProtocol:@protocol(NSObject)]);
        NSLog(@"           doubleValue: %f", [myNumber doubleValue]);
        NSLog(@"            floatValue: %f", [myNumber floatValue]);
        NSLog(@"              intValue: %i", [myNumber intValue]);
        NSLog(@" ");
        
        NSLog(@"NSString and NSMutableString >");
        NSString *string1 = @"This is a string literal.";
        NSString *string2 = [[NSString alloc] initWithString:string1];
        NSMutableString *mutableString = [[NSMutableString alloc] initWithString:string1];
        [mutableString appendFormat:@" %@", string2];
        NSLog(@"  %@", mutableString);
        NSLog(@" ");

        NSLog(@"NSArray, NSMutableArray and NSSet >");
        NSArray *myArray = [NSArray arrayWithObjects:@"Bread", @"Butter", @"Milk", @"Eggs", nil];
        NSLog(@"  Number of elements: %li", [myArray count]);
        NSLog(@"   Object at index 2: %@", [myArray objectAtIndex:2]);
        NSMutableArray *myMutableArray = [NSMutableArray arrayWithObject:[NSNumber numberWithInt:265]];
        [myMutableArray addObject:[NSNumber numberWithInt:45]];
        NSLog(@"       Mutable Array: %@", myMutableArray);
        NSLog(@" ");

        NSLog(@"NSDictionary and NSMutableDictionary >");
        NSString *keyA = @"myKey";
        NSString *keyB = @"myKey";
        NSDictionary *myDictionary = [NSDictionary dictionaryWithObject:@"This is a string literal" forKey:keyA];
        NSLog(@"%@", [myDictionary objectForKey:keyB]);
        NSMutableDictionary *myMutableDictionary = [NSMutableDictionary dictionary];
        [myMutableDictionary setObject:myDictionary forKey:@"myDictionary"];
        NSLog(@"%@", myMutableDictionary);
        NSLog(@" ");
        
        NSLog(@"Objective-C Literals >");
        NSNumber *oldNumber1 = [NSNumber numberWithBool:YES];
        NSNumber *newNumber1 = @YES;
        NSNumber *oldNumber2 = [NSNumber numberWithInt:2147];
        NSNumber *newNumber2 = @2147;
        NSArray  *oldArray   = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
        NSArray  *newArray   = @[@"one", @"two", @"three"];
        NSDictionary *oldDictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithInt:12345] forKey:@"key"];
        NSDictionary *newDictionary = @{@"key": @12345};
        NSLog(@"oldNumber1: %@, newNumber1: %@", oldNumber1, newNumber1);
        NSLog(@"oldNumber2: %@, newNumber2: %@", oldNumber2, newNumber2);
        NSLog(@"oldArray: %@, newArray: %@", oldArray, newArray);
        NSLog(@"oldDictionary: %@, newDictionary: %@", oldDictionary, newDictionary);
        NSLog(@" ");
        
        NSLog(@"%@ - %i - %f", @"an object", 3, 3.14);
    }
    return 0;
}

