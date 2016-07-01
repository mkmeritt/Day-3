//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype) init {
    
    if(self = [super init]) {
    self.gold = 1000;
    self.food = 80;
    }
    return self;
}

-(Footman *)trainFootman {
    
    Footman* footman = [Footman new];
    
    if(self.food == 1) {
        return nil;
    }
    
    self.gold = 865;
    self.food = 78;
    
    return footman;
}

-(BOOL)canTrainFootman {
    
    if(self.food < 2) {
        return NO;
    }
    
    if(self.gold < 135) {
        return NO;
    }
    
    return YES;
}

-(Peasant*)trainPeasant{
    
    Peasant* peasant = [Peasant new];
    
    if(self.canTrainPeasant) {
    self.gold = self.gold - 90;
    self.food = self.food - 5;
        
    } else{
        return nil;
    }
    
    return peasant;
}

-(BOOL)canTrainPeasant{
    
    if(self.food < 5){
        return NO;
    }
    
    if(self.gold < 90){
        return NO;
    }
    return YES;
}


@end
