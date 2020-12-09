//
//  CTMediator+OCYDCourse.m
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

#import "CTMediator+OCYDCourse.h"

@implementation CTMediator (OCYDCourse)

///获取ListVC
- (UIViewController *)YDCourse_OCpushList:(NSString *)message callback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[@"message"] = message;
    UIViewController *controller = [self performTarget:@"YDList" action:@"OCpushList" params:params shouldCacheTarget:NO];
    if (controller) {
        return controller;
    }else{
        NSLog(@"==============没有找到相关组件==============");
        return nil;
    }
    
}

@end
