//
//  MenuTool.m
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import "MenuTool.h"

@implementation MenuTool

+ (MNNavigationController *)rootNavigationController {
    return (MNNavigationController *)[MenuTool rootTabBarController].selectedViewController;
}

+ (MNTabBarController *)rootTabBarController {
    return (MNTabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
}

+ (void)pushViewController:(NSString *)viewController {
    [MenuTool pushViewController:viewController withData:nil];
}

+ (void)pushViewController:(NSString *)viewController withData:(NSDictionary *)data {
    Class class = NSClassFromString(viewController);
    NSAssert(class != nil, @"MenuTool收到了一个无效的class");
    if (class) {
        MNViewController *vc = (MNViewController *)[[class alloc]init];
        @try {
            [vc setValue:data forKey:@"data"];
        } @catch (NSException *exception) {
            
        } @finally {
            
        };
        [[MenuTool rootNavigationController]pushViewController:vc animated:YES];
    }
}

+ (void)presentViewController:(NSString *)viewController {
    [MenuTool presentViewController:viewController withData:nil];
}

+ (void)presentViewController:(NSString *)viewController withData:(NSDictionary *)data {
    Class class = NSClassFromString(viewController);
    NSAssert(class != nil, @"MenuTool收到了一个无效的class");
    if (class) {
        MNViewController *vc = (MNViewController *)[[class alloc]init];
        MNNavigationController *nav = [MenuTool rootNavigationController];
        UIViewController *topVc = (UIViewController *)nav.topViewController;
        while (topVc.presentedViewController) {
            topVc = topVc.presentedViewController;
        }
        @try {
            [vc setValue:data forKey:@"data"];
        } @catch (NSException *exception) {
            
        } @finally {
            
        };
        [topVc presentViewController:vc animated:YES completion:^{
            
        }];
    }
}


@end
