//
//  iRuleParser.h
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol iRuleParser <NSObject>
- (NSDictionary *)parseWithResName:(NSString *)resName resExtension:(NSString *)resExtension;

- (bool)checkExtensionIsValid:(NSString *)resExtension;
@end
