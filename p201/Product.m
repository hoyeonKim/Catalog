//
//  Product.m
//  p201
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Product.h"

@implementation Product
+(id) product:(NSString *)name price:(NSString *)price image:(NSString *)image{
    Product *items=[[Product alloc]init];
    items.name = name;
    items.price = price;
    items.imageName = image;
    return items;
}
-(BOOL)isEqualProduct:(NSString *)productCode{
    return [self.code isEqualTosTring:productCode];
}
@end
