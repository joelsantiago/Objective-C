//
//  main.m
//  DateChallenge
//
//  Created by Joel Santiago on 6/21/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1986];
        [comps setMonth:12];
        [comps setDay:31];
        [comps setHour:4];
        [comps setMinute:32];
        [comps setSecond:12];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        int y = (int) d / 31536000;
        NSLog(@"It has been %f seconds since I was born.", d);
        NSLog(@"I have been around for a little more than %d years.", y);
        
    }
    return 0;
}

