//
//  PlayingCardDeck.m
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

// instancetype: return the same type as the object this message was sent to
-(instancetype)init
{
    self = [super init];
    
    if(self) {
        for(NSString *suit in [PlayingCard validSuits]) {
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
