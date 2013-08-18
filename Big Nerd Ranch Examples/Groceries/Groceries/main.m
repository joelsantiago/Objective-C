//
//  main.m
//  Groceries
//
//  Created by Joel Santiago on 6/24/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *groceryList = [NSMutableArray array];
        NSString *item1 = @"Spaghetti";
        NSString *item2 = @"Hamburger Meat";
        NSString *item3 = @"Chicken";
        [groceryList insertObject:item1 atIndex:0];
        [groceryList addObject:item2];
        [groceryList addObject:item3];
        
        for (NSMutableArray *item in groceryList) {
            NSLog(@"The first item in my grocery list I need to get is %@", item);
        }
        
        // Read from files
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // Assign contents from files to Array
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Iterate through array
        for (NSString *n in names) {
            
            // Set range of words being found
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Print if location is found
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
        
        
        for (NSString *name in names) {
            for (NSString *word in words) {
                if (word) {
                    if (([name caseInsensitiveCompare:word] == NSOrderedSame) && (![name isEqualToString:word])) {
                        NSLog(@"%@ and %@ are equal", name, word);
                    }
                }
            }
        }
    }
    return 0;
}