//
//  Card.h
//  Matchismo
//
//  Created by Soham Ghosh on 12/27/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic) unsigned rank;
@property (strong, nonatomic) NSString *suit;

+ (NSArray *) validSuits;

+ (NSUInteger) maxRank;

- (NSString *) contents;

@end
