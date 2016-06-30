//
//  GameController.m
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 ;. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(id)init {
    
    if(self = [super init]) {
    [self createDice];
   // self.currentDice = [[Dice alloc] init];
  
    }
    
    return self;
}

-(void)holdDie:(NSNumber*)givenNumber {
    
    
    
    for (Dice* dice in self.diceArray) {    //for all the dice in the dice array
        
        
        if ([dice.currentValue isEqualToNumber:givenNumber]) {   //if any of the dice in the array are equal to the number
         
            [self.heldDice addObject:dice];   //add this dice to heldDice Array
             NSLog(@"Held dice: [%@]",dice.currentValue);
            dice.held = YES;
        }
        
        else{
            NSLog(@"Un-held dice: %@",dice.currentValue);
            dice.held = NO;
        }
        
        
        [NSThread sleepForTimeInterval:0.5];

    }
    
    for(NSInteger i = 0; i <= self.diceArray.count - 1; i++) {
        
        self.currentDice = [self.diceArray objectAtIndex:i];
        
        BOOL asking = NO;
        
        if (self.currentDice.held && asking == NO) {
            
            asking = YES;
            
            NSLog(@"Type toggle to unhold a HELD dice");
            NSLog(@"Type reset to reset all HELD dice");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString* inputString = [NSString stringWithUTF8String:inputChar];
            
            if([inputString isEqualToString:@"toggle\n"]) {
                self.currentDice.held = NO;
                [self printDice];
            }
            
            if([inputString isEqualToString:@"reset\n"]) {
                
            for (Dice* dice in self.diceArray) {
                
                    dice.held = NO;
                
                     
                 }
                
                 [self printDice];
            }
            
            
        }
    
    }
    
 
    
}

-(void)printDice{
      for (Dice* dice in self.diceArray) {
          if(dice.held) {
                  NSLog(@"Held dice: [%@]",dice.currentValue);
          }
          
          if(!dice.held) {
              NSLog(@"Unheld dice: %@", dice.currentValue);
          }
      }
}

-(void)createDice {
    Dice* dice1 = [[Dice alloc] init];
    Dice* dice2 = [[Dice alloc] init];
    Dice* dice3 = [[Dice alloc] init];
    Dice* dice4 = [[Dice alloc] init];
    Dice* dice5 = [[Dice alloc] init];
    
    self.diceArray = @[dice1, dice2, dice3, dice4, dice5];
    
}



@end
