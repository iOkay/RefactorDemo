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
    
    double outstanding = 0.0;
    
    [self printBanner];
    
    // calculate outstanding
    
    for (Order *item in self.orders) {
        
        outstanding += item.amount;
    }
    
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

@end