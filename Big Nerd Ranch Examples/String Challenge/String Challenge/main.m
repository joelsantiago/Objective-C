//
//  main.m
//  String Challenge
//
//  Created by Joel Santiago on 6/22/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];
        NSLog(@"current host = %@",host);
        NSLog(@"localized name = %@", name);
    }
    return 0;
}

