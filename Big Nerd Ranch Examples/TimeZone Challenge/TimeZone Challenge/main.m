//
//  main.m
//  TimeZone Challenge
//
//  Created by Joel Santiago on 6/21/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        bool savings = [zone isDaylightSavingTime];
        
        NSLog(@"The current time zone of this machine is %@", zone);
        
        if (savings == 1) {
            NSLog(@"This time zone is currently experiencing daylight savings time.");
        } else
            NSLog(@"This time zone is currently not experiencing daylight savings time.");
    }
    return 0;
}

