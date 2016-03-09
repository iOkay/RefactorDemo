//
//  Account.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Account.h"
#import "Gamma.h"

@implementation Account

- (int)gammaWithQuantity:(int)quantity inputVal:(int)inputVal yearToDate:(int)yearToDate {
    
    return [[[Gamma alloc] initWithAccount:self quantity:quantity inputVal:inputVal yearToDate:yearToDate] compute];
}


- (int)delta {
    return 10;
}

@end
