//
//  PlayingCard.m
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♠️",@"♣️",@"♥️",@"♦️"];
}

// setter for suit
- (void) setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

// getter for suit
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void) setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
