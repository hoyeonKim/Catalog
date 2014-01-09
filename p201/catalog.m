//
//  catalog.m
//  p201
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "catalog.h"
#import "Product.h"
@implementation catalog{
    NSArray *data;
}

static catalog *_instance = nil;
+(id)defaultCatalog{
    if(nil==_instance)
        _instance = [[catalog alloc]init];
    return _instance;
    }

-(id) init{
    self = [super init];
    if(self){
        data = @[[Product product:@"Baseball" price:@"100" image:@"b1.png"],
                 [Product product:@"Basketball" price:@"200" image:@"b2.png"],
                 [Product product:@"Football" price:@"250" image:@"b3.png"],
                 [Product product:@"Bowlingball" price:@"300" image:@"b4.jpeg"],
                 [Product product:@"Golfball" price:@"999" image:@"b5.jpeg"]];
                 
    }
    return self;
}

-(id)productAt:(int)index{
    return [data objectAtIndex:index];
}

-(int)numberOfProducts{
    return [data count];
}
@end
