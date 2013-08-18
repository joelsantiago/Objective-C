//
//  Appliance.m
//  Appliances
//
//  Created by Joel Santiago on 8/14/13.
//  Copyright (c) 2013 Joel Santiago. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (id)initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // Set the product name
        [self setProductName:pn];
        
        // Give voltage a starting value
        voltage = 120;

        // Alternative voltage assignment using accessors
        [self setVoltage:120];
    }
    
    // Return a pointer to the new object
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

- (void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    voltage = x;
}

@end