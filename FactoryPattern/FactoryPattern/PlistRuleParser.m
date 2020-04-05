//
//  PlistRuleParser.m
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "PlistRuleParser.h"

@implementation PlistRuleParser

- (bool)checkExtensionIsValid:(NSString *)resExtension {
    if([resExtension isEqualToString:@"plist"]) {
        return YES;
    }
    return NO;
}

- (NSDictionary *)parseWithResName:(NSString *)resName resExtension:(NSString *)resExtension {
    bool isExtensionValid = [self checkExtensionIsValid:resExtension];
    if(!isExtensionValid) return NULL;
    
    NSString *resPath = [[NSBundle mainBundle] pathForResource:resName ofType:resExtension];
    NSMutableDictionary *resData = [[NSMutableDictionary alloc] initWithContentsOfFile:resPath];
    NSMutableDictionary *mRet = resData.mutableCopy;
    [mRet setObject:@"plist" forKey:@"type"];
    return mRet;
}

@end
