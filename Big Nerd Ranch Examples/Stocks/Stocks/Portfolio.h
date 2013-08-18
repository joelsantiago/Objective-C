//
//  Portfolio.h
//  Stocks
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface Portfolio : NSObject {
    float currentValue;
    NSMutableArray *stocks;
}

- (float)currentValue;
- (void)addStockObjects:(StockHolding *)s;

@end
