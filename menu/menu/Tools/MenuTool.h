//
//  MenuTool.h
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MenuTool : NSObject
+ (MNNavigationController *)rootNavigationController;
+ (MNTabBarController *)rootTabBarController;

+ (void)pushViewController:(NSString *)viewController;
+ (void)pushViewController:(NSString *)viewController withData:(nullable NSDictionary *)data;

+ (void)presentViewController:(NSString *)viewController;
+ (void)presentViewController:(NSString *)viewController withData:(nullable NSDictionary *)data;
@end

NS_ASSUME_NONNULL_END
