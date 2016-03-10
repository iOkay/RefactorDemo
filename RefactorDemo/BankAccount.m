//
//  BankAccount.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "BankAccount.h"
#import "BankAccountType.h"

@interface BankAccount ()

@property (nonatomic, strong) BankAccountType *type;
@property (nonatomic, assign) int daysOverdrawn;

@end

@implementation BankAccount

- (double)overdraftChange {
    return [self.type overdraftChange:self.daysOverdrawn];
}

- (double)bankCharge {
    double result = 4.5;
    if (self.daysOverdrawn > 0) {
        result += [self overdraftChange];
    }
    
    return result;
}

@end
