//
//  RuleParserFactory.m
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "RuleParserFactory.h"
#import "JsonRuleParser.h"
#import "PlistRuleParser.h"

@implementation RuleParserFactory

+ (NSObject<iRuleParser> *)createParserWithExtension:(NSString *)resExtension {
    Class parser = [self fetchParserWithExtension:resExtension];
    return [[parser alloc] init];
}

+ (Class)fetchParserWithExtension:(NSString *)resExtension {
    return @{
             @"json" : JsonRuleParser.class,
             @"plist" : PlistRuleParser.class,
    }[resExtension];
}

@end
