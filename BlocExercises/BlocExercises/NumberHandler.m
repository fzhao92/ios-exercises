//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithInt:[number intValue]*2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *ret = [NSMutableArray array];
    NSInteger start;
    NSInteger end;
    if (number > otherNumber) {
        end = number;
        start = otherNumber;
    }
    else{
        end = otherNumber;
        start = number;
    }
    while (start <= end) {
        [ret addObject:[NSNumber numberWithInteger: start]];
        start++;
    }
    return ret;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *arr = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [arr sortUsingDescriptors:@[sortDescriptor]];
    return [[arr objectAtIndex:0] integerValue];
}

@end
