//
//  GameController.h
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import <Cocoa/Cocoa.h>

@interface GameController : NSObject

@property (nonatomic, retain) NSArray *diceArray;
@property (nonatomic, retain) NSMutableArray *heldDice;
@property (nonatomic, retain) Dice* currentDice;
@property (nonatomic, assign) int score;


-(id)init;
-(void)holdDie: (NSNumber*)givenNumber;
-(void)createDice;
-(void)printDice;
-(void)showScore;


@end
