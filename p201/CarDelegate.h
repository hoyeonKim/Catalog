//
//  CarDelegate.h
//  p201
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CarDelegate <NSObject>
-(void) addItem:(id)sender;
-(void) incQantity:(NSString *)productCode;
-(void) decQuantity:(NSString *)productCode;

@end
