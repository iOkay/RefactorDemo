//
//  Gamma.h
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Account;

@interface Gamma : NSObject

- (instancetype)initWithAccount:(Account *)account quantity:(int)quantity inputVal:(int)inputVal yearToDate:(int)yearToDate;

- (int)compute;

@end
