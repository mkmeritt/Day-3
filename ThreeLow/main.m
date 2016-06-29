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
        
        

        
        while(isRunning) {
            
            
            char inputChar[255];
            
            printf("Enter roll to randomize the values\n");
            
            fgets(inputChar, 255, stdin);
            
            NSString* inputString = [NSString stringWithUTF8String:inputChar];

            
        if([inputString isEqualToString:@"roll\n"]) {
            

        }
            
        }
        
    }
    return 0;
}
