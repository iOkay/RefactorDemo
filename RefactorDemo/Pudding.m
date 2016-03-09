//
//  Pudding.m
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Pudding.h"

@interface Pudding ()

@property (nonatomic, assign) int delay;
@property (nonatomic, assign) double primaryForce;
@property (nonatomic, assign) double mass;

@end

@implementation Pudding

- (double)distanceTravelled:(int)time {
    double result;
    double acc = _primaryForce * _mass;
    int primaryTime = MIN(time, _delay);
    result = 0.5 * acc * primaryTime * primaryTime;
    int secondaryTime = time - _delay;
    if (secondaryTime > 0) {
        double primaryVel = acc * _delay;
        acc = (_primaryForce + secondaryTime) / _mass;
        result += primaryVel * secondaryTime + 0.5 * acc * secondaryTime * secondaryTime;
    }
    
    return result;
}

@end
