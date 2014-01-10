//
//  cart.h
//  p201
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
@interface cart : NSObject

-(void)incQuantity:(NSString *)productCode;
-(void)decQuantity:(NSString *)productCode;

@end
