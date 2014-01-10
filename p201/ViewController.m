//
//  ViewController.m
//  p201
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"
#import "Product.h"
#import "CarDelegate.h"
#import "catalog.h"
#import "CartItem.h"
#import "cart.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate, CarDelegate>{
    NSMutableArray *cart;
}


@end

@implementation ViewController
-(void)incQantity:(NSString *)productCode{
    [self.cart incQuantity:productCode];
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)decQuantity:(NSString *)productCode{
    [self.cart decQuantity:productCode];
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
-(void)addItem:(id)sender{
    NSIndexPath *indexPath = [self.table indexPathForCell:sender];
    Product *product = [[catalog defaultCatalog] productAt:indexPath.row];
    
    
    [cart addObject:product];
    
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(0==section)
        return [[catalog defaultCatalog]numberOfProducts];
    else
        return [cart count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(0==indexPath.section){
        ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
    
        Product *product = [[catalog defaultCatalog]productAt:indexPath.row];
        [cell setProductionInfo:product];
        cell.delegate = self;
        
        return cell;
    }
    
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CART_CELL"];
        
        Product *item = cart[indexPath.row];
        cell.textLabel.text = item.name;
        return cell;
}
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(0==section)
        return @"Product";
    else
        return @"Items in cart";
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    cart = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
