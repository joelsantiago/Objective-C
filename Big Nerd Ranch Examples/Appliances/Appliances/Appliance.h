//
//  Appliance.h
//  Appliances
//
//  Created by Joel Santiago on 8/14/13.
//  Copyright (c) 2013 Joel Santiago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    NSString *productName;
    int voltage;
}
@property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

// The designated initializer
- (id)initWithProductName:(NSString *)pn;

@end
