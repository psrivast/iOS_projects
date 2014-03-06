//
//  Deck.m
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property(strong,nonatomic) NSMutableArray *cards; // of Card

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;

    //check that the deck isn't empty
    if([self.cards count] != 0) {

        //randomly get element from the deck
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
    
}

@end