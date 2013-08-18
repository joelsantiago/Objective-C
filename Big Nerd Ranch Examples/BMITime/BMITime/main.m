//
//  main.m
//  BMITime
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            // Put the employee in the employees array
            [employees addObject:person];
            
            // Is this the first employee?
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            
            // Is this the second employee?
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an asset
            Asset *asset = [[Asset alloc] init];
            
            // Give it an interesting lable
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObjects:asset];
            
            [allAssets addObject:asset];
        }
        
        // Sorting array with sort descriptors
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        // Another sort descriptor
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        // Sort employees array with the previous 2 sort descriptors
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"\nEmployees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"\nallAssets: %@", allAssets);
        
        NSLog(@"\nexecutives: %@", executives);
        
        // Create predicate used for filtering arrays, string determines what is filtered
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        // Filter allAssets array with previous predicate
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"\ntoBeReclaimed: %@", toBeReclaimed);
        
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
        allAssets = nil;
        executives = nil;
        
        /*
            // Create an instance of Person
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:96];
            [person setHeightInMeters:1.8];
            [person setEmployeeID:15];
            
            // Call the bodyMassIndex method
            float bmi = [person bodyMassIndex];
            //NSLog(@"person has a BMI of %f", bmi);
            //NSLog(@"person (%d, %.1f) has a BMI of %f", [person weightInKilos], [person heightInMeters], bmi);
            NSLog(@"Employee %d has a BMI of %.1f", [person employeeID], bmi);
        */
        
    }
    return 0;
}