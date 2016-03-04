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

- (instancetype)initWithTitle:(NSString *)title priceCode:(NSInteger)priceCode
{
    self = [super init];
    
    if (self) {
        self.title = title;
        self.priceCode = priceCode;
    }
    
    return self;
}

@end
