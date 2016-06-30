//
//  Dice.h
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, retain) NSNumber* currentValue;
@property (nonatomic, assign) BOOL held;

-(id)init;
-(NSNumber*)randomizeValue;

@end
