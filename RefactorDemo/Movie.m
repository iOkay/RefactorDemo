//
//  Movie.m
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Movie.h"

@interface Movie ()

@end

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode
{
    self = [super init];
    
    if (self) {
        self.title = title;
        self.priceCode = priceCode;
    }
    
    return self;
}

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    double result = 0;
    
    switch (self.priceCode) {
        case MoviePriceRegular:
            result += 2;
            if (daysRented > 2) {
                result += (daysRented - 2) * 1.5;
            }
            break;
        case MoviePriceNewRelease:
            
            result += daysRented * 3;
            break;
        case MoviePriceChildrens:
            result += 1.5;
            if (daysRented > 3) {
                
                result += (daysRented - 3) * 1.5;
            }
            break;
        default:
            break;
    }
    
    return result;

}

- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented
{
    if (self.priceCode == MoviePriceNewRelease && daysRented > 1) {
        
        return 2;
    } else {
        
        return 1;
    }

}

@end
