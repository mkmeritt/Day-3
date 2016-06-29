//
//  Dice.m
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(id)init {
    
    if(self = [super init]) {
        self.currentValue = self.randomizeValue;
    }
    
    return self;
}

-(int)randomizeValue {
    int value = arc4random() % 6 + 1;

    NSLog(@"Value is now %d", value);
    return value;
}

@end
