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

@end
