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
    
    return _quantity * _itemPrice -
    MAX(0, _quantity - 500) * _itemPrice * 0.05 +
    MIN(_quantity * _itemPrice * 0.1, 100.0);
}

@end
