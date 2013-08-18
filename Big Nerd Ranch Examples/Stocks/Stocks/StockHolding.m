//
//  StockHolding.m
//  Stocks
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars {
    return numberOfShares * purchaseSharePrice;
}

- (float)valueInDollars {
    return numberOfShares * currentSharePrice;
}

@end
