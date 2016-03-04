//
//  Customer.m
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Customer.h"
#import "Rental.h"
#import "Movie.h"

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

- (NSInteger)frequentRenterPointFor:(Rental *)rental
{
    return rental.frequentRenterPoint;
}

// 生成详单函数
- (NSString *)statement
{
    NSMutableString *result = [[NSMutableString alloc] initWithFormat:@"Rental Record for %@ \n", self.name];
    
    for (Rental *rental in self.rentals) {
        
        // show figures for this rental
        [result appendString:[NSString stringWithFormat:@"\t%@\t%@\n", rental.movie.title, [NSNumber numberWithDouble:rental.charge]]];
    }
    
    // add footer lines
    [result appendString:[NSString stringWithFormat:@"Amount owed is %@\n", [NSNumber numberWithDouble:[self totalCharge]]]];
    [result appendString:[NSString stringWithFormat:@"You earned %@\n frequent renter points", [NSNumber numberWithInteger:[self frequentRenterPoints]] ]];
    
    return result;
}

- (double)totalCharge
{
    double totalAmount = 0;
    
    for (Rental *rental in self.rentals) {
        
        totalAmount += rental.charge;
    }

    return totalAmount;
}

- (NSInteger)frequentRenterPoints
{
    NSInteger frequentRenterPoints = 0;

    for (Rental *rental in self.rentals) {
        
        frequentRenterPoints += rental.frequentRenterPoint;
    }

    return frequentRenterPoints;
}

@end
