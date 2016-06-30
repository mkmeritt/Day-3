//
//  GameController.h
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, retain) NSArray *diceArray;
@property (nonatomic, retain) NSMutableArray *heldDice;


-(id)init;
-(void)holdDie: (NSNumber*)givenNumber;
-(void)createDice;

-(void)printDiceArray;
-(void)printHeldArray;

@end
