//
//  SecondViewController.m
//  TabBarDemo
//
//  Created by colr on 2017/6/6.
//  Copyright © 2017年 colr. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(p_didTap)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)p_didTap {
    
    
    
    [self.tabBarController setSelectedIndex:0];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
