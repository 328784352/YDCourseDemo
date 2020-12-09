//
//  CTMediator+OCYDCourse.h
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

///跳转某组件OC实现的类时需要用OC实现CTMediator的Category
///命名规则为CTMediator+OC（组件名），例如：CTMediator+OCYDRouter；
@interface CTMediator (OCYDCourse)

///方法名要以组件名开头，命名规则为YDRouter_OC（方法名），例如： YDRouter_OCpushList。
- (UIViewController *)YDCourse_OCpushList:(NSString *)message callback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END
