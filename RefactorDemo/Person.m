//
//  Person.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *officeAreaCode;
@property (nonatomic, copy) NSString *officeNumber;

@end

@implementation Person

- (NSString *)telephoneNumber {
    return [NSString stringWithFormat:@"(%@)%@", _officeAreaCode, _officeNumber];
}

@end
