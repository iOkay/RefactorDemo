//
//  Customer.h
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Rental;

@interface Customer : NSObject

@property (nonatomic, strong) NSString *name;

- (void)addRental:(Rental *)rental;

- (NSString *)statement;

@end
