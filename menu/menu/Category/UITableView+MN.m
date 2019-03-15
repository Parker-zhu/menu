//
//  UITableView+MN.m
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import "UITableView+MN.h"

@implementation UITableView (MN)

- (void)registerforCellReuseIdentifier:(NSString *)string {
    UINib *nib = [UINib nibWithNibName:string bundle:nil];
    if (nib) {
        [self registerNib:nib forCellReuseIdentifier:string];
        return;
    }
    Class class = NSClassFromString(string);
    NSAssert(class != nil, @"UITableView (MN)收到了一个无效的class");
    if (class) {
        [self registerClass:class forCellReuseIdentifier:string];
        return;
    }
    
}
@end
