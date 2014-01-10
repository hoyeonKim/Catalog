//
//  cartcell.m
//  p201
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "cartcell.h"
#import "CarDelegate.h"


@interface cartcell()
@property (weak,nonatomic)id <CarDelegate> delegate;
@property(copy,nonatomic)NSString *productCode;

@end

@implementation cartcell
-(IBAction)plusClick:(id)sender{
    [self.delegate incQantity:self.productCode];
}
-(IBAction)minusclick:(id)sender{
    [self.delegate decQuantity:self.productCode];
}
-(void)setCartItem:(CartItem *)item{
    self.productCode = item.product.code;
    name.txt = item.product.name;
    quantity.text = [NSString stringWithFormat:@"%d개",item.quantity];
}
@end
