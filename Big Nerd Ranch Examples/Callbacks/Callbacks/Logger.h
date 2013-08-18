//
//  Logger.h
//  Callbacks
//
//  Created by Joel Santiago on 8/9/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;

// REPLACED WITH addObserverForName:object:queue:usingBlock method
// - (void)zoneChange:(NSNotification *)t;
@end
