//
//  TabBarController.m
//  TabBarDemo
//
//  Created by colr on 2017/6/6.
//  Copyright © 2017年 colr. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()
<UITabBarControllerDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
    
   
    
    
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.tag = idx;
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
//    if (viewController.tabBarItem.tag == 1) {
//        return NO;
//    }
    return YES;
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    [super setSelectedIndex:selectedIndex];
    
    if (selectedIndex == 0) {
        self.tabBar.hidden = NO;
    }
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
    NSLog(@"did select item: %@", item);
    
    if (item.tag == 1) {
        NSLog(@"did tap second item");
        tabBar.hidden = YES;
    }
    else {
        tabBar.hidden = NO;
    }
    
    
}

@end
