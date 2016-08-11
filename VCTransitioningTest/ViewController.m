//
//  ViewController.m
//  VCTransitioningTest
//
//  Created by HaKim on 16/8/11.
//  Copyright © 2016年 haKim. All rights reserved.
//

#import "ViewController.h"
#import "TWOneViewController.h"
#import "TWTwoViewController.h"

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
- (IBAction)pushBtnClicked:(UIButton *)sender {
//    TWTwoViewController *vc = [[TWTwoViewController alloc] init];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([TWTwoViewController class])];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)oneViewControllerDidClickedMissBtn:(UIButton*)btn{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
