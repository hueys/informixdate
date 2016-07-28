//
//  NSDate+InformixDateConversion.h
//  informixdate
//
//  Created by Steven Huey on 7/28/16.
//  Copyright © 2016 Steve Huey. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Convert an Informix DATE value to an NSDate instance. An Informix DATE value
 * is an integer representing the number of days since Dec 31, 1899.
 *
 * http://www.ibm.com/developerworks/data/library/techarticle/dm-0510roy/index.html
 */
@interface NSDate (InformixDateConversion)
+ (NSDate*)dateWithInformixDate:(NSInteger)informixDate;
+ (NSDate*)informixReferenceDate;
@end
