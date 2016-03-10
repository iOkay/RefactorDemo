//
//  TelephoneNumber.h
//  RefactorDemo
//
//  Created by Bran on 16/3/10.
//  Copyright © 2016年 Bran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TelephoneNumber : NSObject

@property (nonatomic, copy) NSString *areaCode;
@property (nonatomic, copy) NSString *number;

- (NSString *)telephoneNumber;

@end
