//
//  main.m
//  TimeAfterTime
//
//  Created by Joel Santiago on 6/20/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        NSUInteger hour = [cal ordinalityOfUnit:NSHourCalendarUnit
                                         inUnit:NSYearCalendarUnit
                                        forDate:now];
        NSLog(@"This is hour %lu of the year", hour);
        
        // Literal instance of NSString
        NSString *lament = @"Why me!?";
        
        // NSString created programmatically
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];
        
        // Get length of NSString
        NSUInteger charCount = [lament length];
        
        // Check if two strings are equal
        if ([lament isEqual:x]) {
            NSLog(@"%@ and %@ are equal", lament, x);
        }
    }
    return 0;
}

