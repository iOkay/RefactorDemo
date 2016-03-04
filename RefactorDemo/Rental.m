//
//  Rental.m
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Rental.h"
#import "Movie.h"

@implementation Rental

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented
{
    self = [super init];
    
    if (self) {
        
        self.movie = movie;
        self.daysRented= daysRented;
    }
    
    return self;
}

- (double)charge
{
    double result = 0;
    
    switch (self.movie.priceCode) {
        case MoviePriceRegular:
            result += 2;
            if (self.daysRented > 2) {
                result += (self.daysRented - 2) * 1.5;
            }
            break;
        case MoviePriceNewRelease:
            
            result += self.daysRented * 3;
            break;
        case MoviePriceChildrens:
            result += 1.5;
            if (self.daysRented > 3) {
                
                result += (self.daysRented - 3) * 1.5;
            }
            break;
        default:
            break;
    }
    
    return result;
}

- (NSInteger)frequentRenterPoint
{
    if (self.movie.priceCode == MoviePriceNewRelease && self.daysRented > 1) {
        
        return 2;
    } else {
        
        return 1;
    }

}


@end
