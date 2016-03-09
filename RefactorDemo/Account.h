//
//  Account.h
//  RefactorDemo
//
//  Created by Bran on 16/3/9.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

- (int)gammaWithQuantity:(int)quantity inputVal:(int)inputVal yearToDate:(int)yearToDate;
- (int)delta;

@end
