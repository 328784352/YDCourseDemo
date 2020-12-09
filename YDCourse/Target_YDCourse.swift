//
//  Target_YDCourse.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

import UIKit

///各组件对外开放接口类，类名要以Target_开头，命名规则为Target_（组件名），例如：Target_YDCorse；
@objc class Target_YDCourse: NSObject {
    ///方法名要以Action_开头，命名规则为Action_ （方法名），例如：Action_pushCourse。
    @objc func Action_pushCourse(_ params:NSDictionary) -> UIViewController {
        //初始化对应获取的类，赋值参数处理
        let course = YDCourseViewController()
        if let messgae = params["message"] as? String{
            course.message = messgae
        }
        if let callback = params["callback"] as? (String) -> Void{
            course.callback = callback
        }
        return course
    }
}
