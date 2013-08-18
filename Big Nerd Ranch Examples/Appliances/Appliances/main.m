//
//  main.m
//  Appliances
//
//  Created by Joel Santiago on 8/14/13.
//  Copyright (c) 2013 Joel Santiago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        
        // Key / Value coding
        [a setValue:@"Washing Machine" forKey:@"productName"];
        
        //[a setVoltage:240];

        // Key / Value coding for non-object types
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}

