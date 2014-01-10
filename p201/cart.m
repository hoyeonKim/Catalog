//
//  cart.m
//  p201
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "cart.h"
#import "CartItem.h"
@implementation cart

-(void)incQuantity:(NSString *)productCode{
    CartItem *item = [self cartItemWith:productCode];
    self.item.quantity--;
    
    if(0==item.quantity)
        [item removeObject:item];
}

-(CartItem *)cartItemWith:(NSString *)ProductCode{
    for(CartItem *item in items){
        if([item.product isEqualProduct:ProductCode]){
            return item;
        }
    }
    return nil;
}
@end
