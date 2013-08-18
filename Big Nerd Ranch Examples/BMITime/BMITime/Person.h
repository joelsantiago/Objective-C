//
//  Person.h
//  BMITime
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person inherits all the instance variables
// and methods defined by the class NSObject
@interface Person : NSObject {
    // It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

// Property accessor methods - more convenient than setter / getter
@property float heightInMeters;
@property int weightInKilos;

// You will be able to set those instance variables using these methods
// - (void)setHeightInMeters:(float)h;
// - (void)setWeightInKilos:(int)w;

// Getter methods
// - (float)heightInMeters;
// - (int)weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;
@end
