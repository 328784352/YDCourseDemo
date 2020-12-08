//
//  CTMediator+OCYDCourse.h
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (OCYDCourse)

- (UIViewController *)YDCourse_pushList:(NSString *)message callback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END
