//
//  Card.m
//  Matchismo
//
//  Created by Soham Ghosh on 12/27/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "Card.h"

@interface Card()

@property (strong, nonatomic) NSArray *rankStrings;

@end

@implementation Card

+ (NSArray *) validSuits {
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}

+ (NSUInteger) maxRank {
    //return [[self rankStrings] count] - 1;
    return 13;
}

- (NSString *) contents {
    return [self.rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (NSArray *) rankStrings {
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"K", @"Q"];
}

@end
