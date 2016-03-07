//
//  Price.m
//  RefactorDemo
//
//  Created by Bran on 16/3/7.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Price.h"

#pragma mark -- Price

@implementation Price

- (MoviePriceCode)priceCode
{
    return MoviePriceRegular;
}

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    double result = 2;
    
    if (daysRented > 2) {
        result += (daysRented - 2) * 1.5;
    }
    
    return result;
}

- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented
{
    return 1;
}

@end

#pragma mark -- ChildrensPrice

@implementation ChildrensPrice

- (MoviePriceCode)priceCode
{
    return MoviePriceChildrens;
}

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    double result = 1.5;
    
    if (daysRented > 3) {
        result += (daysRented - 3) *1.5;
    }
    
    return result;
}

@end

#pragma mark - NewReleasePrice

@implementation NewReleasePrice

- (MoviePriceCode)priceCode
{
    return MoviePriceNewRelease;
}

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    return daysRented * 3;
}

- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented
{
    return daysRented > 1 ? 2 : 1;
}

@end


#pragma mark - RegularPrice

@implementation RegularPrice

- (MoviePriceCode)priceCode
{
    return MoviePriceRegular;
}

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    double result = 2;
    
    if (daysRented > 2) {
        result += (daysRented - 2) * 1.5;
    }
    
    return result;
}

@end
