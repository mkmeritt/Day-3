//
//  peasant.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 6/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Peasant.h"

@implementation Peasant

-(instancetype) initWithHP:(int)hp AP:(int)ap {
   
    if(self = [super init]){
        
    _healthPoints = 35;
        _ap = 0;
    }
    return self;
}

-(void)setHealthPoints:(int)hp{
    _healthPoints = hp;
}

-(int)healthPoints{
    return 35;
}

-(int)attackPower{
    return 0;
}
@end
