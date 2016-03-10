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
    if ([self.type isPremium]) {
        
        double result = 10;
        if (self.daysOverdrawn > 7) {
            result += (self.daysOverdrawn - 7) * 0.85;
            return result;
        }
    } else {
        return self.daysOverdrawn * 1.75;
    }
    
    return 0;
}

- (double)bankCharge {
    double result = 4.5;
    if (self.daysOverdrawn > 0) {
        result += [self overdraftChange];
    }
    
    return result;
}

@end
