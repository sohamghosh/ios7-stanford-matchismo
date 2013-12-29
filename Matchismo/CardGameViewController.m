//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Soham Ghosh on 12/25/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
        
    } else {
        Card *card = [self.deck drawCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;    
    self.flipLabel.text = [NSString stringWithFormat:@"Flip: %d", self.flipCount];
}

- (Deck *) deck {
    if (!_deck) {
        _deck = [[Deck alloc] init];
    }
    return _deck;
}

@end
