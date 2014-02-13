//
//  LuckyTableView.h
//  LoneWolf
//
//  Created by Matías Ginart on 13/02/14.
//  Copyright (c) 2014 Matías Ginart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LuckyTableView : UIView

@property (nonatomic, strong) UIImageView* luckyTableImage;
@property (nonatomic, strong) UIView* highlightView;
@property (nonatomic, strong) NSNumber* chosenNumber;

@property (nonatomic, strong) NSArray* allData;

- (void)startSpinning;

- (void)stopSpinning;

- (void)clear;

@end
