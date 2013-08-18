//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

// Override costInDollars in StockHolding
-(float)costInDollars {
    // Assign return value from costInDollars from StockHolding
    float newCost = [super costInDollars];
    return newCost * conversionRate;
}

// Override valueInDollars in StockHolding
-(float)valueInDollars {
    // Assign return value from valueInDollars from StockHolding
    float newValue = [super valueInDollars];
    return newValue * conversionRate;
}

@end
