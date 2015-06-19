//
//  ViewController.m
//  SLButtonDemo
//
//  Created by SL🐰鱼子酱 on 15/6/19.
//  Copyright © 2015年 SL🐰鱼子酱. All rights reserved.
//

#import "ViewController.h"
#import "SLButtonIsDifferentFromUIButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SLButtonIsDifferentFromUIButton * btn = [SLButtonIsDifferentFromUIButton SLButtonWithType:SLButtonTypeButtonWhoesTitleIsUnderImage];
    
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
    
    [btn setTitle:@"萨达十的" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"Icon-60"] forState:UIControlStateNormal];

    btn.frame = CGRectMake(100, 100, 200, 300);

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
