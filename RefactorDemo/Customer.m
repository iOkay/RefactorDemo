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


// 生成详单函数
- (NSString *)statement
{
    double totalAmount = 0;
    NSInteger frequentRenterPoints = 0;
    NSMutableString *result = [[NSMutableString alloc] initWithFormat:@"Rental Record for %@ \n", self.name];
    
    for (Rental *rental in self.rentals) {
        
        double thisAmount = 0;
        
        // determine amounts for each rental
        switch (rental.movie.priceCode) {
            case MoviePriceRegular:
                thisAmount += 2;
                if (rental.daysRented > 2) {
                    thisAmount += (rental.daysRented - 2) * 1.5;
                }
                break;
            case MoviePriceNewRelease:
                
                thisAmount += rental.daysRented * 3;
                break;
            case MoviePriceChildrens:
                thisAmount += 1.5;
                if (rental.daysRented > 3) {
                    
                    thisAmount += (rental.daysRented - 3) * 1.5;
                }
                break;
            default:
                break;
        }
        
        // add frequent renter points
        frequentRenterPoints++;
        
        // add bounds for a two day new release rental
        if (rental.movie.priceCode == MoviePriceNewRelease && rental.daysRented > 1) {
            frequentRenterPoints++;
        }
        
        // show figures for this rental
        [result appendString:[NSString stringWithFormat:@"\t%@\t%@\n", rental.movie.title, [NSNumber numberWithDouble:thisAmount]]];
        totalAmount += thisAmount;
    }
    
    // add footer lines
    [result appendString:[NSString stringWithFormat:@"Amount owed is %@\n", [NSNumber numberWithDouble:totalAmount]]];
    [result appendString:[NSString stringWithFormat:@"You earned %@\n frequent renter points", [NSNumber numberWithInteger:frequentRenterPoints] ]];
    
    return result;
}

@end
