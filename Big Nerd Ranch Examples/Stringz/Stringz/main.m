//
//  main.m
//  Stringz
//
//  Created by Joel Santiago on 7/7/13.
//  Copyright (c) 2013 SofDev Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Joel is cool!\n"];
        }
        
        // Declare a pointer to an NSError object, but don't instantiate it
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error = nil;
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/Users/Joel/Desktop/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        // Test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"done writing /Users/Joel/Desktop/cool.txt");
        } else {
            NSLog(@"writing /Users/Joel/Desktop/cool.txt failed: %@", [error localizedDescription]);
        }
        
        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/Users/Joel/Desktop/cool.txt"
                                                         encoding:NSASCIIStringEncoding
                                                            error:&error];
        
        if (!str2) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"cool.txt looks like this: %@", str2);
        }
        
        /*[str writeToFile:@"/Users/Joel/Desktop/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:NULL];
        NSLog(@"done writing /Users/Joel/Desktop/cool.txt");*/
        
    }
    return 0;
}

