//
//  main.m
//  Stocks
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Portfolio *folder = [[Portfolio alloc] init];
        
        // Create array to hold stack objects
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        // Create stack objects
        ForeignStockHolding *a = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *b = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *c = [[ForeignStockHolding alloc] init];
        
        // Assign values to stack variables
        [a setPurchaseSharePrice:2.30];
        [a setCurrentSharePrice:4.50];
        [a setNumberOfShares:40];
        [a setConversionRate:2.50];
        
        [b setPurchaseSharePrice:12.19];
        [b setCurrentSharePrice:10.56];
        [b setNumberOfShares:90];
        [b setConversionRate:9.50];
        
        [c setPurchaseSharePrice:45.10];
        [c setCurrentSharePrice:49.51];
        [c setNumberOfShares:210];
        [c setConversionRate:12.50];
        
        // Add stack objects to array
        [array insertObject:a atIndex:0];
        [array addObject:b];
        [array addObject:c];
        
        for (ForeignStockHolding *s in array) {
            [folder addStockObjects:s];
        }
        
        float totalValue = 0.0;
        for (ForeignStockHolding *stock in array) {
            totalValue += [stock valueInDollars];
        }
        
        NSLog(@"The total cost of the stocks is %.2f", totalValue);
        NSLog(@"The total cost of the portfolio is %.2f", [folder currentValue]);
                
        /*
            // Fast Iterate through array
            for (ForeignStockHolding *s in array) {
                
                // Assign stack methods to variables
                float cost = [s costInDollars];
                float value = [s valueInDollars];
                
                // print values
                NSLog(@"\nCost of stocks = %.2f\nValue of stocks = %.2f", cost, value);
            }
        */
    }
    return 0;
}

