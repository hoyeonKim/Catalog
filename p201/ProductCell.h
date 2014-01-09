//
//  ProductCell.h
//  p201
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarDelegate.h"
#import "Product.h"

@interface ProductCell : UITableViewCell

-(void)setProductionInfo:(Product *)item;
@property (weak) id<CarDelegate> delegate;
@end
