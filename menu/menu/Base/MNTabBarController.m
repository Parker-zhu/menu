//
//  MNTabBarController.m
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import "MNTabBarController.h"

#import "MNHomeViewController.h"
#import "MNClassifyViewController.h"
#import "MNMoreViewController.h"
@interface MNTabBarController ()

@end

@implementation MNTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initViewControllers];
}
- (void)initViewControllers {
    [self addChildViewContoller:[MNHomeViewController new] name:@"首页" normalImage:@"" selected:@""];
    [self addChildViewContoller:[MNClassifyViewController new] name:@"分类" normalImage:@"" selected:@""];
    [self addChildViewContoller:[MNMoreViewController new] name:@"更多" normalImage:@"" selected:@""];
}

- (void)addChildViewContoller:(MNViewController *)vc name:(NSString *)name normalImage:(NSString *)normal selected:(NSString *)selected {
    MNNavigationController *nav = [[MNNavigationController alloc]initWithRootViewController:vc];
    
    vc.title = name;
    vc.tabBarItem.image = [UIImage imageNamed:normal];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selected];
    [self addChildViewController:nav];
}
@end
