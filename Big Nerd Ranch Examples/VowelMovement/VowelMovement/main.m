//
//  main.m
//  VowelMovement
//
//  Created by Joel Santiago on 8/17/13.
//  Copyright (c) 2013 Joel Santiago. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the array of strinsg to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old strings %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        // Create a list of characters that we'll remove from the string
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        // Declare the block variable
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // typedef block declaration
        // UNUSED DUE TO PASSING ANONYMOUS BLOCK
        /* ArrayEnumerationBlock devowelizer; */
        
        // Assign a block to the variable
        // UNUSED DUE TO PASSING ANONYMOUS BLOCK
        /* devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // Prevent further iterations
                return; // Stop this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurences of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [newStrings addObject:newString];

        }; // End of block assignment */
        
        // Iterate over the array with our block
        //[oldStrings enumerateObjectsUsingBlock:devowelizer];
        [oldStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop)
        {
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // Prevent further iterations
                return; // Stop this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurences of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [newStrings addObject:newString];
            
        }]; // End of block assignment
        
        NSLog(@"new strings: %@", newStrings);
        
    }
    return 0;
}

