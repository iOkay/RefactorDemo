//
//  Rental.h
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Movie;

@interface Rental : NSObject

@property (strong, nonatomic) Movie  *movie;
@property (assign, nonatomic) NSInteger daysRented;

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented;

@end
