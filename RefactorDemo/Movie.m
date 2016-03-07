//
//  Movie.m
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Movie.h"
#import "Price.h"

@interface Movie ()

@end

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode
{
    self = [super init];
    
    if (self) {
        self.title = title;
        [self setPriceCode:priceCode];
    }
    
    return self;
}

#pragma mark - setter/getter

- (void)setPriceCode:(MoviePriceCode)priceCode
{
    switch (priceCode) {
        case MoviePriceChildrens:
            _price = [ChildrensPrice new];
            break;
        case MoviePriceNewRelease:
            _price = [NewReleasePrice new];
            break;
        case MoviePriceRegular:
            _price = [RegularPrice new];
            break;
        default:
            NSAssert(NO, @"Incorrect Price Code");
            break;
    }
}

- (MoviePriceCode)priceCode
{
    return _price.priceCode;
}

#pragma mark - 

- (double)chargeWithDaysRented:(NSInteger)daysRented
{
    return [_price chargeWithDaysRented:daysRented];
}

- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented
{
    return [_price frequentRenterPointWithDaysRented:daysRented];
}

@end
