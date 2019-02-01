//
//  FFTemplateTableViewCell.h
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFTemplateTableViewCell : UITableViewCell

- (void)configModel:(NSObject *)model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;


@end
