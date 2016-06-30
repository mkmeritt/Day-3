//
//  GameController.m
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(id)init {
    
    if(self = [super init]) {
    [self createDice];
  
    }
    
    return self;
}

-(void)holdDie:(NSNumber*)givenNumber {
    
    for (Dice* dice in self.diceArray) {    //for all the dice in the dice array
        if ([dice.currentValue isEqualToNumber:givenNumber]) {   //if any of the dice in the array are equal to the number
         
              [self.heldDice addObject:dice];   //add this dice to heldDice Array
             NSLog(@"Held dice: [%@]",dice.currentValue);
        }
        
        else{
            NSLog(@"Un-held dice: [%@]",dice.currentValue);        }
    }
}

-(void)createDice {
    Dice* dice1 = [[Dice alloc] init];
    Dice* dice2 = [[Dice alloc] init];
    Dice* dice3 = [[Dice alloc] init];
    Dice* dice4 = [[Dice alloc] init];
    Dice* dice5 = [[Dice alloc] init];
    
    self.diceArray = [[NSMutableArray alloc] initWithObjects:dice1, dice2, dice3, dice4, dice5, nil];
    
}



@end
