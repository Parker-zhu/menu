//
//  UIView+MN.m
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import "UIView+MN.h"

@implementation UIView (MN)

+ (UIView *)loadFromXib {
    UIView *view = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    return view;
}
@end
