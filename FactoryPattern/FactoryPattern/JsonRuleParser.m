//
//  JsonRuleParser.m
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "JsonRuleParser.h"

@implementation JsonRuleParser

- (bool)checkExtensionIsValid:(NSString *)resExtension {
    if([resExtension isEqualToString:@"json"]) {
        return YES;
    }
    return NO;
}

- (NSDictionary *)parseWithResName:(NSString *)resName resExtension:(NSString *)resExtension {
    bool isExtensionValid = [self checkExtensionIsValid:resExtension];
    if(!isExtensionValid) return NULL;
    
    NSString *resPath = [[NSBundle mainBundle] pathForResource:resName ofType:resExtension];
    NSData * jsonData = [NSData dataWithContentsOfFile:resPath];
    if(NULL == jsonData) return NULL;
    NSMutableDictionary *resData = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    NSMutableDictionary *mRet = resData.mutableCopy;
    [mRet setObject:@"json" forKey:@"type"];
    return mRet;
}

@end
