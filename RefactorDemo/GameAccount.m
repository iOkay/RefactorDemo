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
@property (nonatomic, assign) double interestRate;   // 将interestRate搬移到GameAccountType中

@end

@implementation GameAccount

- (double)interestForAmount:(double)amount days:(int)days {
    return _interestRate * amount * days / 365;
}

@end
