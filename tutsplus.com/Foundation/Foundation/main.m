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
        NSObject *myFirstObject = [[NSObject alloc] init];
        NSLog(@"NSObject >");
        NSLog(@"               Class: %@", [myFirstObject class]);
        NSLog(@"          Superclass: %@", [myFirstObject superclass]);
        NSLog(@"Conforms to Protocol: %i", [myFirstObject conformsToProtocol:@protocol(NSObject)]);

        NSNumber *myNumber = [NSNumber numberWithDouble:854736e+13];
        NSLog(@"NSNumber >");
        NSLog(@"               Class: %@", [myNumber class]);
        NSLog(@"          Superclass: %@", [myNumber superclass]);
        NSLog(@"Conforms to Protocol: %i", [myNumber conformsToProtocol:@protocol(NSObject)]);
        NSLog(@"         doubleValue: %f", [myNumber doubleValue]);
        NSLog(@"          floatValue: %f", [myNumber floatValue]);
        NSLog(@"            intValue: %i", [myNumber intValue]);
    }
    return 0;
}

