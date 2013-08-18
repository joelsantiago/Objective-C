//
//  Person.m
//  BMITime
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "Person.h"

@implementation Person

// Synthesize method acts as setter / getter for property methods
@synthesize heightInMeters, weightInKilos;

// Original setter / getter methods that aren't used with property methods
/*
- (void)setHeightInMeters:(float)h {
    heightInMeters = h;
}
- (void)setWeightInKilos:(int)w {
    weightInKilos = w;
}
- (float)heightInMeters {
    return heightInMeters;
}
- (int)weightInKilos {
    return weightInKilos;
}
*/
- (float)bodyMassIndex {
    // old return value syntax
    // return weightInKilos / (heightInMeters * heightInMeters);
    
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
