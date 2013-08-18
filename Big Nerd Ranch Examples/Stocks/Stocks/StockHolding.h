//
//  StockHolding.h
//  Stocks
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject {
    
    float purchaseSharePrice, currentSharePrice;
    int numberOfShares;
    
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;     // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberOfShares

@end
