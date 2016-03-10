//
//  Person.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "Person.h"
#import "TelephoneNumber.h"

@interface Person ()

@property (nonatomic, strong) TelephoneNumber *officeTelephone;

@property (nonatomic, copy) NSString *name;

@end

@implementation Person

- (NSString *)telephoneNumber {
    return [self.officeTelephone telephoneNumber];
}

- (NSString *)officeAreaCode {
    return self.officeTelephone.areaCode;
}

- (void)setOfficeAreaCode:(NSString *)officeAreaCode {

    [self.officeTelephone setAreaCode:officeAreaCode];
}

- (NSString *)officeNumber {
    return self.officeTelephone.number;
}

- (void)setOfficeNumber:(NSString *)officeNumber {
    [self.officeTelephone setNumber:officeNumber];
}

@end
