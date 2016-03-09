//
//  Account.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Account.h"

@implementation Account

- (int)gammaWithQuantity:(int)quantity inputVal:(int)inputVal yearToDate:(int)yearToDate {
    int importantValue1 = (inputVal * quantity) + [self delta];
    int importantValue2 = (inputVal *yearToDate) + 100;
    if ((yearToDate - importantValue1) > 100) {
        importantValue2 -= 20;
    }
    
    int importantValue3 = importantValue2 * 7;
    
    return importantValue3 - 2 * importantValue1;
}


- (int)delta {
    return 10;
}

@end
