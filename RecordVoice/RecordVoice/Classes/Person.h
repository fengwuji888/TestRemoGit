//
//  Person.h
//  RecordVoice
//
//  Created by huatu on 2019/3/11.
//  Copyright © 2019 huatu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *email;

// one开发者添加了一个年龄
@property (nonatomic, assign) NSInteger age;

// 添加一个属性
@property (nonatomic, strong) NSMutableArray *teams;

@end

NS_ASSUME_NONNULL_END
