//
//  CustomerManager.m
//  RefactorDemo
//
//  Created by Bran on 16/3/11.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import "CustomerManager.h"

@implementation CustomerManager

- (void)checkSecurity:(NSArray *)people {
    BOOL found = false;
    for (int i = 0; i < [people count]; i++) {
        if (!found) {
            if ([[people objectAtIndex:i] isEqualToString:@"Don"]) {
                
                break;
            }
            if ([[people objectAtIndex:i] isEqualToString:@"John"]) {
                
                break;
            }
        }
    }
}

@end
