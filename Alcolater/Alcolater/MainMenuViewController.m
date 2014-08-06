//
//  MainMenuViewController.m
//  Alcolater
//
//  Created by Kervins Valcourt on 8/6/14.
//  Copyright (c) 2014 EastoftheWestEnd. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ViewController.h"
#import "WhiskeyViewController.h"

@interface MainMenuViewController () <UITextFieldDelegate>

@property (weak, nonatomic) UIButton *wineButton;
@property (weak, nonatomic) UIButton *whiskeyButton;

@end

@implementation MainMenuViewController

 - (void)loadView {
     self.view = [[UIView alloc]init];
     UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
     UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
     
     [self.view addSubview:button];
     [self.view addSubview:button2];
     
     
      self.wineButton = button;
      self.whiskeyButton = button2;
     
     
 
 }

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.wineButton setTitle:NSLocalizedString(@"Wine!", @"Calculate command") forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey!", @"Calculate command") forState:UIControlStateNormal];
    self.title = NSLocalizedString(@"Select an Alcolater", nil);
}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
   
    CGFloat viewHight = [[UIScreen mainScreen]bounds].size.height;
    CGFloat padding = 20;
    CGFloat itemHeight = 44;
    
    
    self.wineButton.frame = CGRectMake(padding, viewHight/2, 100, itemHeight);
   
    self.whiskeyButton.frame = CGRectMake(padding *10, viewHight/2, 100, itemHeight);
    

    
}

- (void) winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed:(UIButton *) sender {
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
