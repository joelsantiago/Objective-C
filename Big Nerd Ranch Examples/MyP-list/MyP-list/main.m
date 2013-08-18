//
//  main.m
//  MyP-list
//
//  Created by Joel Santiago on 8/9/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        // We have to include an array, dictionary, string, data, date, integer, float, and boolean in our plist.
        // Comments will be used to ID the type
        
        // Array
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        // Dictionary
        NSMutableDictionary *stock;
        
        // Property List Item 1
        stock = [NSMutableDictionary dictionary];
        
        // String
        [stock setObject:@"AAPL" forKey:@"symbol"];
        
        // Integer
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        
        // Date
        [stock setObject:[NSDate date] forKey:@"date"];
        
        // Float
        [stock setObject:[NSNumber numberWithFloat:32.33] forKey:@"price"];
        
        // Boolean
        [stock setObject:[NSNumber numberWithBool:YES] forKey:@"settled"];
        
        // Data
        NSData *pic = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"]];
        [stock setObject:pic forKey:@"logo"];
        
        // Adds 1st object to property list
        [stocks addObject:stock];
        
        // Property List Item 2
        stock = [NSMutableDictionary dictionary];
        
        // String
        [stock setObject:@"GOOG" forKey:@"symbol"];
        
        // Integer
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        
        // Date
        [stock setObject:[NSDate date] forKey:@"date"];
        
        // Float
        [stock setObject:[NSNumber numberWithFloat:12.45] forKey:@"price"];
        
        // Boolean
        [stock setObject:[NSNumber numberWithBool:NO] forKey:@"settled"];
        
        // Data
        NSData *pic1 = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"]];
        [stock setObject:pic1 forKey:@"logo"];
        
        // Adds 2nd object to property list
        [stocks addObject:stock];
        
        // Writes property list to directory
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
    }
    return 0;
}