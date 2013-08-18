//
//  Asset.m
//  BMITime
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *)description {
    
    // Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", [self label], [self resaleValue]];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
