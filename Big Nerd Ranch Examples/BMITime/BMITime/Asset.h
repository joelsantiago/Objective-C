//
//  Asset.h
//  BMITime
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject {
    
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

- (NSString *)description;
- (void)dealloc;

@end
