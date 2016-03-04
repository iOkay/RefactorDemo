//
//  Movie.h
//  RefactorDemo
//
//  Created by Bran on 16/3/4.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MovieType) {
    MovieTypeRegular = 0,
    MovieTypeNewRelease = 1,
    MovieTypeChildrens = 2,
};

@interface Movie : NSObject

@property (copy, nonatomic) NSString *title;
@property (assign, nonatomic) NSInteger priceCode;

- (instancetype)initWithTitle:(NSString *)title priceCode:(NSInteger)priceCode;

@end
