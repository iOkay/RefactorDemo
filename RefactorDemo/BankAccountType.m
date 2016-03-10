//
//  BankAccountType.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "BankAccountType.h"

@implementation BankAccountType

- (double)overdraftChange:(int)daysOverdrawn {
    if ([self isPremium]) {
        
        double result = 10;
        if (daysOverdrawn > 7) {
            result += (daysOverdrawn - 7) * 0.85;
            return result;
        }
    } else {
        return daysOverdrawn * 1.75;
    }
    
    return 0;
}

- (BOOL)isPremium {
    return YES;
}

@end
