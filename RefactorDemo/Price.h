//
//  Price.h
//  RefactorDemo
//
//  Created by Bran on 16/3/7.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

@protocol MoviePriceDelegate <NSObject>

- (NSInteger)charge:(NSInteger)daysRented;

@end

@interface Price : NSObject

@property (nonatomic, assign) MoviePriceCode priceCode;

- (double)chargeWithDaysRented:(NSInteger)daysRented;

- (NSInteger)frequentRenterPointWithDaysRented:(NSInteger)daysRented;

@end

@interface ChildrensPrice : Price

@end


@interface NewReleasePrice : Price

@end

@interface RegularPrice : Price

@end