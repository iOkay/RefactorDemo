//
//  Customer.m
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Customer.h"

@interface Customer ()

@property (nonatomic, strong) NSMutableArray *rentals;

@end

@implementation Customer

- (void)addRental:(Rental *)rental
{
    if (!rental) {
        
        return;
    }
    
    if (!self.rentals) {
        self.rentals = [NSMutableArray new];
    }
    
    [self.rentals addObject:rental];
}

@end
