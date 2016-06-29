//
//  main.m
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        BOOL isRunning = YES;

        
        while(isRunning) {
            
            
            char inputChar[255];
            
            printf("Enter roll to randomize the values\n");
            
            fgets(inputChar, 255, stdin);
            
            NSString* inputString = [NSString stringWithUTF8String:inputChar];

            
        if([inputString isEqualToString:@"roll\n"]) {
            
            [dice1 randomizeValue];
            [dice2 randomizeValue];
            [dice3 randomizeValue];
            [dice4 randomizeValue];
            [dice5 randomizeValue];
            
        }
            
        }
        
    }
    return 0;
}
