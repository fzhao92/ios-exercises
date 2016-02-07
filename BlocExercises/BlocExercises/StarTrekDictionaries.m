//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *favDrinks = [@[] mutableCopy];
    for (NSDictionary *drinks in charactersArray) {
        [favDrinks addObject: drinks[@"favorite drink"]];
    }
    return favDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *dictWithQuote = [characterDictionary mutableCopy];
    dictWithQuote[@"quote"] = @"hello";
   // [dictWithQuote setObject:@"hello" forKey:@"quote"];
    return dictWithQuote;
}

@end
