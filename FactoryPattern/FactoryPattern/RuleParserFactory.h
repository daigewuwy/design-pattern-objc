//
//  RuleParserFactory.h
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iRuleParser.h"

@interface RuleParserFactory : NSObject
+ (NSObject<iRuleParser> *)createParserWithExtension:(NSString *)fileExtension;
@end
