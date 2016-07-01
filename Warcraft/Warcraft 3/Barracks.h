//
//  Barracks.h
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import <Foundation/Foundation.h>
#import "Footman.h"
#import "Peasant.h"

@interface Barracks : NSObject

-(instancetype) init;

- (Footman *)trainFootman;
-(BOOL) canTrainFootman;
- (Peasant*)trainPeasant;
- (BOOL)canTrainPeasant;

@property (nonatomic, assign) int gold;
@property (nonatomic, assign) int food;

@end
