//
//  Chips.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Chips.h"

@interface Chips ()

@property (nonatomic, assign) int quantity;
@property (nonatomic, assign) int itemPrice;

@end

@implementation Chips

- (double)price {
    
    double basePrice = _quantity * _itemPrice;
    double quantityDiscount = MAX(0, _quantity - 500) * _itemPrice * 0.05;
    double shipping = MIN(basePrice * 0.1, 100.0);
    return basePrice - quantityDiscount + shipping;
}

@end
