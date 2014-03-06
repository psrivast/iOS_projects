//
//  PlayingCard.h
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//


#import "Card.h" // Card is the superclass


@interface PlayingCard : Card

@property(strong,nonatomic) NSString *suit;
@property(nonatomic) NSUInteger rank;

- (NSString *)contents;
+ (NSArray *)rankStrings;
+ (NSArray *)validSuits;
- (void) setSuit:(NSString *)suit;
- (NSString *)suit;
+ (NSUInteger)maxRank;
- (void) setRank:(NSUInteger)rank;

@end
