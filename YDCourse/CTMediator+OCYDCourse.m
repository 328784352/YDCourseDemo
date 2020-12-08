//
//  CTMediator+OCYDCourse.m
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

#import "CTMediator+OCYDCourse.h"

@implementation CTMediator (OCYDCourse)

- (UIViewController *)YDCourse_pushList:(NSString *)message callback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[@"message"] = message;
    return [self performTarget:@"YDList" action:@"pushOCYDList" params:params shouldCacheTarget:NO];
}

@end
