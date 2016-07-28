//
//  main.m
//  informixdate
//
//  Created by Steven Huey on 7/28/16.
//  Copyright © 2016 Steve Huey. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSDate+InformixDateConversion.h"

int main(int argc, const char * argv[]) {
   @autoreleasepool
   {
      if (2 == argc)
      {
         // Parse the informix date into an NSInteger value
         NSString* rawInformixDate = [NSString stringWithCString:(char*)argv[1]
                                                        encoding:NSUTF8StringEncoding];
         NSInteger informixDate = [rawInformixDate integerValue];
         
         
         // Calculate the date
         NSDate* date = [NSDate dateWithInformixDate:informixDate];
         
         // Format and print the actual date
         NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
         dateFormatter.dateFormat = @"MMM dd, yyyy";
         
         printf("%s\n", [[dateFormatter stringFromDate:date]
                         cStringUsingEncoding:NSUTF8StringEncoding]);
      }
      else
      {
         printf("Usage: informixdate <DATE>\n");
      }
   }
   
   return 0;
}
