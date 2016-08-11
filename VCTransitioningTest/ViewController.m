//
//  ViewController.m
//  VCTransitioningTest
//
//  Created by HaKim on 16/8/11.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "ViewController.h"
#import "TWOneViewController.h"

@interface ViewController ()<TWOneViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickmeBtnClicked:(UIButton *)sender {
    TWOneViewController *vc = [[TWOneViewController alloc] init];
    
    vc.delegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)oneViewControllerDidClickedMissBtn:(UIButton*)btn{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
