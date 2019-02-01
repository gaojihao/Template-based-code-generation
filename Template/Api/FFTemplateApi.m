//
//  FFTemplateApi.m
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//

#import "FFTemplateApi.h"
#import "FFTemplateModel"

@interface FFTemplateApi ()

@property (nonatomic, strong) FFTemplateModel *templateModel;

@end

@implementation FFTemplateApi

- (NSString *)relativePath
{
    return <#path#>;
}

- (FFApiType)httpMethod
{
    return <#FFApiType#>;
}

- (void)parseResponse:(id)response {
    if (response) {
        FFTemplateModel *templateModel = [[FFTemplateModel alloc] initWithDic:response[@"data"]];
    }
}

- (NSString *)author {
    return @"<#author#>";
}

- (NSString *)clientAuthor {
    return @"<#clientAuthor#>";
}

@end
