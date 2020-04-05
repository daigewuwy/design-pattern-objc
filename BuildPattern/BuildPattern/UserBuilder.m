//
//  UserBuilder.m
//  BuildPattern
//
//  Created by xueqooy on 2020/4/4.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "UserBuilder.h"

@implementation UserBuilder

- (User *)buildUser {
    /// 在User被初始化前，校验参数，保证合法性。
    [self checkIsValidForNameAndPwd];
    [self checkValidableForDegreeAndStudentFlag];
    return [[User alloc] initWithBuilder:self];
}

- (void)checkIsValidForNameAndPwd {
    NSAssert(self.name != NULL, @"name of user must be not null");
    NSAssert(self.pwd != NULL, @"name of user must be not null");
}

- (void)checkValidableForDegreeAndStudentFlag {
    assert(YES == self.isStudent && NULL != self.degree);
}

@end
