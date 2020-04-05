//
//  UserBuilder.h
//  BuildPattern
//
//  Created by xueqooy on 2020/4/4.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserBuilder : NSObject

- (User *_Nonnull)buildUser;

/// 模拟User参数过多的情况，所以不通过形参配置参数值
@property (copy, nonatomic, nonnull) NSString *name;
@property (copy, nonatomic, nonnull) NSString *pwd;
@property (copy, nonatomic, nullable) NSString *gender;
@property (copy, nonatomic, nullable) NSString *desc;
@property (copy, nonatomic, nullable) NSString *degree;
@property (assign, nonatomic) BOOL isStudent; /// 为YES时，degree不应为空

@end
