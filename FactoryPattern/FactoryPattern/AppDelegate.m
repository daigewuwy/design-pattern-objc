//
//  AppDelegate.m
//  FactoryPattern
//
//  Created by xueqooy on 2020/4/3.
//  Copyright © 2020年 GraduationpProject. All rights reserved.
//

#import "AppDelegate.h"
#import "RuleParserFactory.h"
#import "JsonRuleParser.h"
#import "PlistRuleParser.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self test_ParserFactory];
    [self test_PlistParser];
    [self test_JsonParser];
    return YES;
}


- (void)test_ParserFactory {
    NSObject<iRuleParser> *plistParser = [RuleParserFactory createParserWithExtension:@"plist"];
    assert([plistParser isMemberOfClass:PlistRuleParser.class]);
    
    NSObject<iRuleParser> *jsonParser = [RuleParserFactory createParserWithExtension:@"json"];
    assert([jsonParser isMemberOfClass:JsonRuleParser.class]);
}

- (void)test_PlistParser {
    NSObject<iRuleParser> *plistParser = [RuleParserFactory createParserWithExtension:@"plist"];
    
    bool isValid = [plistParser checkExtensionIsValid:@"json"];
    assert(isValid != YES);
    
    isValid = [plistParser checkExtensionIsValid:@"plist"];
    assert(isValid == YES);
    
    NSDictionary *plistData = [plistParser parseWithResName:@"helloworld" resExtension:@"plist"];
    assert(NULL != plistData);
    assert([plistData[@"type"] isEqualToString:@"plist"]);
    
    plistData = [plistParser parseWithResName:@"noExist" resExtension:@"plist"];
    assert(NULL == plistData);
}

- (void)test_JsonParser {
    NSObject<iRuleParser> *jsonParser = [RuleParserFactory createParserWithExtension:@"json"];
    
    bool isValid = [jsonParser checkExtensionIsValid:@"plist"];
    assert(isValid != YES);
    
    isValid = [jsonParser checkExtensionIsValid:@"json"];
    assert(isValid == YES);
    
    NSDictionary *jsonData = [jsonParser parseWithResName:@"helloworld" resExtension:@"json"];
    assert(NULL != jsonData);
    assert([jsonData[@"type"] isEqualToString:@"json"]);
    
    jsonData = [jsonParser parseWithResName:@"noExist" resExtension:@"json"];
    assert(NULL == jsonData);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
