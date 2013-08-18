//
//  main.m
//  DateList
//
//  Created by Joel Santiago on 6/23/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:yesterday, now, tomorrow, nil];
        
        // How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:1]);
        NSLog(@"The second date is %@", [dateList objectAtIndex:2]);
        
        // Standard for loop iteration
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // Fast Enumeration for loop
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Create a Mutable Array
        NSMutableArray *dateListMut = [NSMutableArray array];
        
        // Add elements to mutable array
        [dateListMut insertObject:yesterday atIndex:0];
        [dateListMut addObject:now];
        [dateListMut addObject:tomorrow];
        
        // Fast Enumerate through mutable array
        for (NSDate *dM in dateListMut) {
            NSLog(@"Here is the date from the mutable array: %@", dM);
        }
        
        // Remove element from mutable array
        [dateListMut removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateListMut objectAtIndex:0]);
        
        
        
        
    }
    return 0;
}

