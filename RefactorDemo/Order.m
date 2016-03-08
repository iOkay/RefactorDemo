//
//  Order.m
//  RefactorDemo
//
//  Created by Bran on 16/3/8.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Order.h"

@interface Order ()

@property (nonatomic, readwrite) double amount;

@end

@implementation Order

- (double)amount {
    
    return _amount;
}

@end
