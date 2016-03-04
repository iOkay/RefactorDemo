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
    double totalAmount = 0;
    NSInteger frequentRenterPoints = 0;
    NSMutableString *result = [[NSMutableString alloc] initWithFormat:@"Rental Record for %@ \n", self.name];
    
    for (Rental *rental in self.rentals) {
        
        frequentRenterPoints += rental.frequentRenterPoint;
        
        // show figures for this rental
        [result appendString:[NSString stringWithFormat:@"\t%@\t%@\n", rental.movie.title, [NSNumber numberWithDouble:rental.charge]]];
        totalAmount += rental.charge;
    }
    
    // add footer lines
    [result appendString:[NSString stringWithFormat:@"Amount owed is %@\n", [NSNumber numberWithDouble:totalAmount]]];
    [result appendString:[NSString stringWithFormat:@"You earned %@\n frequent renter points", [NSNumber numberWithInteger:frequentRenterPoints] ]];
    
    return result;
}

@end
