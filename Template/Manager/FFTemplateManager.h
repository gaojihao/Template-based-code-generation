//
//  FFTemplateManager.h
//  FFOneCard
//
//  Created by 栗志 on 2017/1/6.
//  Copyright © 2017年 shaofeng. All rights reserved.
//


/*
 *功能描述：
 *1.
 *2.
 */

#import <Foundation/Foundation.h>
@class FFTemplateModel;

@protocol FFTemplateManagerDelegate <NSObject>

- (void)requestTemplateManagerSuccessed;
- (void)requestTemplateManagerFailureWithError:(NSError *)error;

@end

@interface FFTemplateManager : NSObject

@property (nonatomic, strong, readonly) FFTemplateModel *templateModel;
@property (nonatomic, weak) id <FFTemplateManagerDelegate> delegate;

@end
