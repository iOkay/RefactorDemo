//
//  Gamma.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Gamma.h"

#import "Account.h"

@interface Gamma ()
{
    __weak Account *_account;
    int _inputVal;
    int _quantity;
    int _yearToDate;
    int _importantValue1;
    int _importantValue2;
    int _importantValue3;
}

@end

@implementation Gamma

- (instancetype)initWithAccount:(Account *)account quantity:(int)quantity inputVal:(int)inputVal yearToDate:(int)yearToDate {
    self = [super init];
    
    if (self) {
        _account = account;
        _quantity = quantity;
        _inputVal = inputVal;
        _yearToDate = yearToDate;
    }
    
    return self;
}

@end
