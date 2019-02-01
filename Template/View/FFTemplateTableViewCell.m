//
//  FFTemplateTableViewCell.m
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

#import "FFTemplateTableViewCell.h"

@implementation FFTemplateTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    FFTemplateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([FFTemplateTableViewCell class])];
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([FFTemplateTableViewCell class])];
    }
    return cell;
}

#pragma mark ---- 重写父类方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self configTableViewCellStyle];
        [self setupCellSubViews];
        [self setupCellConstraint];
    }
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
}

#pragma mark ---- PrivateMethod
- (void)configTableViewCellStyle{
    self.contentView.backgroundColor = [UIColor whiteColor];
    if ([self respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([self respondsToSelector:@selector(setLayoutMargins:)])
    {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (void)setupCellSubViews{
    
}

- (void)setupCellConstraint{
    
}

#pragma mark ---- BindModel
- (void)configModel:(NSObject *)model{
    
}

#pragma mark ---- LazyLoad

@end
