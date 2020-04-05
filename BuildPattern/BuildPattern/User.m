//
//  User.m
//  BuildPattern
//
//  Created by xueqooy on 2020/4/4.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "User.h"
#import "UserBuilder.h"

@implementation User
{
    NSString *_name; // not null
    NSString *_pwd; // not null
    NSString *_gender; // nullable
    NSString *_desc; // nullable
    NSString *_degree; // nullable
    BOOL _isStudent; // not null
}

-(instancetype)initWithBuilder:(UserBuilder *)builder {
    self = [super init];
    if(self) {
        _name = builder.name;
        _pwd = builder.pwd;
        _gender = builder.gender;
        _desc = builder.desc;
        _degree = builder.degree;
        _isStudent = builder.isStudent;
    }
    return self;
}
@end
