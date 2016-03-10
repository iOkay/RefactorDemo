//
//  TelephoneNumber.m
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "TelephoneNumber.h"

@implementation TelephoneNumber

- (NSString *)telephoneNumber {
    return [NSString stringWithFormat:@"(%@)%@", self.areaCode, self.number];
}

@end
