//
//  LuckyTableView.m
//  LoneWolf
//
//  Created by Matías Ginart on 13/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import "LuckyTableView.h"

#define kMaxHorizontalPanels 10
#define kMaxVerticalPanels 10

@implementation LuckyTableView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.luckyTableImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"luckyTableImage.png"]];
        self.luckyTableImage.frame = self.bounds;
        self.luckyTableImage.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:self.luckyTableImage];

        self.luckyTableImage.backgroundColor = [UIColor redColor];
        self.backgroundColor = [UIColor redColor];

        self.highlightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width/10, self.frame.size.height/10)];
        self.highlightView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];

        self.chosenNumber = [NSNumber numberWithInteger:NSNotFound];
        self.allData = @[
                         @1, @5, @7, @3, @6, @9, @0, @1, @7, @9,
                         @3, @9, @2, @8, @1, @7, @4, @9, @7, @8,
                         @6, @1, @0, @7, @3, @0, @5, @4, @6, @7,
                         @0, @2, @8, @9, @2, @9, @6, @0, @2, @4,
                         @5, @9, @6, @4, @8, @2, @8, @5, @6, @3,
                         @0, @3, @1, @3, @9, @7, @5, @0, @1, @5,
                         @5, @8, @2, @5, @1, @3, @6, @4, @3, @9,
                         @7, @0, @4, @8, @6, @4, @5, @1, @4, @2,
                         @4, @6, @8, @3, @2, @0, @1, @7, @2, @5,
                         @8 ,@3 ,@7 ,@0, @9, @6, @2, @4, @8, @1];
    }
    return self;
}

- (void)changeHighlightCenterRandomly {
    NSUInteger newHorizontal = arc4random() % kMaxHorizontalPanels;
    NSUInteger newVertical = arc4random() % kMaxVerticalPanels;
    self.highlightView.center = CGPointMake(newHorizontal* (self.frame.size.width/kMaxHorizontalPanels) + self.highlightView.frame.size.width/2, newVertical * (self.frame.size.height/kMaxVerticalPanels) + self.highlightView.frame.size.height/2);
    self.chosenNumber = self.allData[newHorizontal + newVertical* kMaxHorizontalPanels];

    [self performSelector:@selector(changeHighlightCenterRandomly) withObject:nil afterDelay:0.2];
}

- (void)startSpinning {
    [self addSubview:self.highlightView];
    [self changeHighlightCenterRandomly];
}

- (void)stopSpinning {
    [[self class] cancelPreviousPerformRequestsWithTarget:self];
}

- (void)clear {
    [self.highlightView removeFromSuperview];
}

@end
