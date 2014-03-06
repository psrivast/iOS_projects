//
//  CardFlipViewController.m
//  CardFlip
//
//  Created by Parag Srivastava on 3/5/14.
//  Copyright (c) 2014 srivastava.parag. All rights reserved.
//

#import "CardFlipViewController.h"
#import "Deck.h"

@interface CardFlipViewController ()

@end

@implementation CardFlipViewController

- (Deck *)deck {
    if(!_deck) {
        _deck = [[PlayingCardDeck alloc]init];
    }
}

- (IBAction)touchCardButton:(UIButton *)sender {

    if([sender.currentTitle length] != 0) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
    }
    
}



@end
