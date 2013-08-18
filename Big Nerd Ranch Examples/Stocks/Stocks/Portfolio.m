//
//  Portfolio.m
//  Stocks
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "Portfolio.h"

@implementation Portfolio

- (float)currentValue {
    float sum = 0;
    for (StockHolding *a in stocks)
    {
        sum += [a valueInDollars];
    }
    return sum;
}

- (void)addStockObjects:(StockHolding *)s {
    if (!stocks) {
        stocks = [[NSMutableArray alloc] init];
    }
    [stocks addObject:s];
}

@end
