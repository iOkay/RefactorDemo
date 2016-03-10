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
    return _type.interestRate * amount * days / 365;
}

@end
