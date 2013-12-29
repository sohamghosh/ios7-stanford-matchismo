//
//  Deck.m
//  Matchismo
//
//  Created by Soham Ghosh on 12/27/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

- (void) addCard:(Card *) card;

@end

@implementation Deck

- (instancetype) init {
    self = [super init];
    if (self) {
        for (NSString *suit in [Card validSuits]){
            for (unsigned rank = 0; rank < [Card maxRank]; rank++) {
                Card *card = [[Card alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }
    return self;
}

- (void) addCard:(Card *) card {
    [self.cards addObject:card];
}

- (Card *) drawCard {
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

- (NSMutableArray *) cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

@end
