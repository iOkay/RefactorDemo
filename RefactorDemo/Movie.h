//
//  Movie.h
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MoviePriceCode) {
    MoviePriceRegular = 0,
    MoviePriceNewRelease = 1,
    MoviePriceChildrens = 2,
};

@class Price;

@interface Movie : NSObject

@property (copy, nonatomic) NSString *title;
@property (nonatomic, strong) Price *price;

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode;

- (void)setPriceCode:(MoviePriceCode)priceCode;
- (MoviePriceCode)priceCode;

- (double)chargeWithDaysRented:(NSInteger)daysRented;
- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented;

@end
