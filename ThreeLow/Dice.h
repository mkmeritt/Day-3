//
//  Dice.h
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) int currentValue;


-(id)init;
-(int)randomizeValue;

@end
