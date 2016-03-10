//
//  Employee.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Employee.h"
#import "Department.h"

@interface Employee ()

@property (nonatomic, strong) Department *department;

@end

@implementation Employee

- (Employee *)manager {
    return [self.department manager];
}

@end
