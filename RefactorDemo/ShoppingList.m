//
//  ShoppingList.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "ShoppingList.h"

@interface ShoppingList ()

@property (nonatomic, assign) int quantity;
@property (nonatomic, assign) int itemPrice;

@end

@implementation ShoppingList

- (double)price {
    
    return [self basePrice] * [self discountFactor];
}

- (int)basePrice {
    return _quantity * _itemPrice;
}

- (double)discountFactor {
    if ([self basePrice] > 1000) {
        return 0.95;
    } else {
        return 0.98;
    }
}

@end
