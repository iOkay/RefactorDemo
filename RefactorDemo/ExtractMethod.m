//
//  ExtractMethod.m
//  RefactorDemo
//
//  Created by Bran on 16/3/8.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "ExtractMethod.h"
#import "Order.h"

@interface ExtractMethod ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *orders;

@end

@implementation ExtractMethod


- (void)printOwing {
    
    [self printBanner];
    
    double outstanding = [self outstanding];
    
    [self printDetails:outstanding];
}


// 无局部变量
- (void)printBanner {
    // print banner
    NSLog(@"**************************");
    NSLog(@"***** Customer Owes ******");
    NSLog(@"**************************");

}

// 有局部变量
- (void)printDetails:(double)outstanding {
    
    //print details
    NSLog(@"name: %@", _name);
    NSLog(@"amount: %f", outstanding);

}

// 对局部变量再赋值
- (double)outstanding {
    double result = 0;
    
    for (Order *item in self.orders) {
        
        result += item.amount;
    }
    
    return result;
}

@end