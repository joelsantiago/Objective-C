//
//  Employee.h
//  BMITime
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person {
    
    int employeeID;
    //NSMutableArray *assets;
    NSMutableSet *assets;
}

@property int employeeID;

- (void)addAssetsObjects:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
