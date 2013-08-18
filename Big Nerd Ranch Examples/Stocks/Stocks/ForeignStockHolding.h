//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Joel Santiago on 6/26/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding {
    
    float conversionRate;
    
}
@property float conversionRate;

@end
