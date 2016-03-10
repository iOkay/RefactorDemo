//
//  GameAccount.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "GameAccount.h"
#import "GameAccountType.h"

@interface GameAccount ()

@property (nonatomic, strong) GameAccountType *type;


@end

@implementation GameAccount

- (double)interestForAmount:(double)amount days:(int)days {
    return self.interestRate * amount * days / 365;
}

- (void)setInterestRate:(double)interestRate
{
    [_type setInterestRate:interestRate];
}

- (double)interestRate {
    return [_type interestRate];
}


@end
