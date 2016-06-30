//
//  main.m
//  ThreeLow
//
//  Created by Mark Meritt on 2016-06-29.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        BOOL isRunning = YES;
        
        GameController *controller;
        
        while(isRunning) {
            
            char inputChar[255];
            printf("Enter roll to randomize the values\n");
            fgets(inputChar, 255, stdin);
            NSString* inputString = [NSString stringWithUTF8String:inputChar];
            
            
        if([inputString isEqualToString:@"roll\n"]) {
            
             controller = [[GameController alloc] init];

        }
            char diceChar[255];
            printf("Enter dice to hold\n");
            fgets(diceChar, 255, stdin);
            NSString* diceString = [NSString stringWithUTF8String:diceChar];
            
            int val = [diceString intValue];
            
            NSNumber* num = [NSNumber numberWithInt:val];
            
            [controller holdDie:num];
          

        }
        
    }
    return 0;
}
