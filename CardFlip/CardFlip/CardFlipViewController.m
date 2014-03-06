//
//  CardFlipViewController.m
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//

#import "CardFlipViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import <UIKit/UIColor.h>


@interface CardFlipViewController ()

@property (nonatomic) int flipCount;
@property (nonatomic) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

@end

@implementation CardFlipViewController

- (Deck *)deck {
    if(!_deck) {
        _deck = [[PlayingCardDeck alloc]init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


- (IBAction)touchCardButton:(UIButton *)sender {

    if([sender.currentTitle length] != 0) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        PlayingCard *card = (PlayingCard *)[self.deck drawRandomCard];
        if(card) {
            NSArray *redSuits = @[@"♥️",@"♦️"];
            //NSArray *blackSuits = @[@"♠️",@"♣️"];
            
            if([redSuits containsObject:[card suit]]) {
                [sender setTitleColor:[UIColor redColor]
                             forState:UIControlStateNormal];
            }
            else {
                [sender setTitleColor:[UIColor blackColor]
                             forState:UIControlStateNormal];
            }
            
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:[card contents] forState:UIControlStateNormal];
            
        }
    }
    self.flipCount++;
}



@end
