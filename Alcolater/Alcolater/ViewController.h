//
//  ViewController.h
//  Alcolater
//
//  Created by Kervins Valcourt on 7/31/14.
//  Copyright (c) 2014 EastoftheWestEnd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UILabel *resultLabel;
@property (weak, nonatomic) UISlider *beerCountSlider;

- (void)buttonPressed:(UIButton *)sender;

@end

