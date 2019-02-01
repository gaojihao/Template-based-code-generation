//
//  FFTemplateManager.m
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

#import "FFTemplateManager.h"
#import "FFTemplateApi.h"
#import "FFTemplateModel.h"

@interface FFTemplateManager () <FFDataProviderDelegate>

@property (nonatomic, strong) FFTemplateModel *templateModel;
@property (nonatomic, strong) FFTemplateApi *templateApi;

@end

@implementation FFTemplateManager





#pragma mark - FFDataProviderDelegate
- (void)requestSuccessed:(id<FFDataProviderProtocol>)dp {
    
    self.templateModel = self.templateApi.templateModel;
    
    if ([self.delegate respondsToSelector:@selector(requestTemplateManagerSuccessed)]) {
        [self.delegate requestTemplateManagerSuccessed];
    }
}

- (void)requestFailured:(id<FFDataProviderProtocol>)dp error:(NSError *) error {
    if ([self.delegate respondsToSelector:@selector(requestTemplateManagerFailureWithError:)]) {
        [self.delegate requestTemplateManagerFailureWithError:error];
    }
}

#pragma mark - Lazyload
- (FFTemplateApi *)templateApi
{
    if (!_templateApi)
    {
        _templateApi = [[FFTemplateApi alloc] init];
        _templateApi.delegate = self;
    }
    return _templateApi;
}

@end
