//
//  FFTemplateViewController.m
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

#import "FFTemplateViewController.h"
#import "FFTemplateManager.h"

@interface FFTemplateViewController () <FFTemplateManagerDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) FFTemplateManager *templateManager;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation FFTemplateViewController

#pragma mark ---- LifeCycle
- (void)viewDidLoad{
    [super viewDidLoad];
    [self loadNav];
    [self setupSubviews];
    [self setupSubviewsContraints];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark ---- PrivateMethod
- (void)loadNav
{
    self.title = @"<#title#>";
}

- (void)setupSubviews
{
    
}

- (void)setupSubviewsContraints
{
    
}

- (void)requestData
{
    [DejalBezelActivityView loadingViewForView:self.view withLabel:@"努力加载中..."];
}

#pragma mark ---- Action


#pragma mark ---- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

#pragma mark ---- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark ---- FFTemplateManagerDelegate
- (void)requestTemplateManagerSuccessed{
    [DejalBezelActivityView removeViewAnimated:NO];
    
}
- (void)requestTemplateManagerFailureWithError:(NSError *)error{
    [DejalBezelActivityView removeViewAnimated:NO];
    [MBHUDHelper showWarningWithText:error.errorMessage];
}

#pragma mark ---- LazyLoad
- (FFTemplateManager *)templateManager
{
    if (!_templateManager)
    {
        _templateManager = [[FFTemplateManager alloc] init];
        _templateManager.delegate = self;
    }
    return _templateManager;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.separatorColor = self.view.backgroundColor;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.tableFooterView = [UIView new];
    }
    
    return _tableView;
}

@end
