//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

-(instancetype)init{
    _healthPoints = 60;
    return self;
}

- (int)attackPower {
    return 10;
}

-(void)damage:(int)damage{
    _healthPoints = _healthPoints - damage;
}

-(void)attack:(Unit *)enemy withDamage:(int)damage{
    enemy.healthPoints = enemy.healthPoints - damage;
}

-(int)healthPoints{
    return _healthPoints;
}

@end
