//
//  User.h
//  BuildPattern
//
//  Created by xueqooy on 2020/4/4.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserBuilder;

@interface User : NSObject

- (instancetype)initWithBuilder:(UserBuilder *)builder;

@end
