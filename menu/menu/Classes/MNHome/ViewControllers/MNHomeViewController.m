//
//  MNHomeViewController.m
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import "MNHomeViewController.h"

@implementation MNHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)setUp {
    self.fd_prefersNavigationBarHidden = YES;
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if ([MenuTool rootNavigationController].childViewControllers.firstObject != self) {
//        [MenuTool presentViewController:@"MNHomeViewController"];
    } else {
        [MenuTool pushViewController:@"MNHomeViewController"];
    }
}
@end
