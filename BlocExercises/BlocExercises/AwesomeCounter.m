//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *ret = [NSMutableString stringWithString: @""];
    if (otherNumber > number) {
        while(number <= otherNumber){
            [ret appendString: [NSString stringWithFormat: @"%ld", number]];
            number++;
        }
    }
    else if(otherNumber < number){
        while(otherNumber <= number){
            [ret appendString: [NSString stringWithFormat: @"%ld", otherNumber]];
            otherNumber++;
        }
    }
    else{
        [ret appendString: [NSString stringWithFormat: @"%ld", number]];
    }
    return ret;
}

@end
