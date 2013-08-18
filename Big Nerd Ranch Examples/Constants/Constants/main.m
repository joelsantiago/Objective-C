//
//  main.m
//  Constants
//
//  Created by Joel Santiago on 7/6/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // In literal NSString, use \u for arbitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}

