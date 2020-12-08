//
//  Target_YDCourse.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/8.
//

import UIKit

@objc class Target_YDCourse: NSObject {
    func Action_pushCourse(_ params:NSDictionary) -> UIViewController {
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
