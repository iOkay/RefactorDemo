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

@interface Movie : NSObject

@property (copy, nonatomic) NSString *title;
@property (assign, nonatomic) MoviePriceCode priceCode;

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode;

@end
