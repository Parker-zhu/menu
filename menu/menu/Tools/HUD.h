//
//  HUD.h
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HUD : NSObject
+ (void)loading;
+ (void)hide;

+ (void)showText:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
