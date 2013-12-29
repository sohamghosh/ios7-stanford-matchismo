//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Soham Ghosh on 12/25/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    
    self.flipLabel.text = [NSString stringWithFormat:@"Flip: %d", self.flipCount];
}

@end
