//
//  MNViewController.h
//  menu
//
//  Created by Parker on 2019/3/15.
//  Copyright © 2019年 Parker. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MNViewController : UIViewController

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,strong) NSDictionary *data;

- (void)setUp;
- (void)initSubviews;
@end

NS_ASSUME_NONNULL_END
