//
//  CTMediator+YDCourse.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/7.
//

import UIKit
import CTMediator

public extension CTMediator {
    func YDCourse_pushHomePage(_ message:String, callback:@escaping (String) -> Void) -> UIViewController {
        
        if let viewController = self.performTarget("YDHomePage", action: "PushHomePage", params: ["message":message,kCTMediatorParamsKeySwiftTargetModuleName:"YDHomePage","callback":callback], shouldCacheTarget: false) as? UIViewController {
            return viewController
        }else{
            return UIViewController()
        }
    }
    
    func YDCourse_pushList(_ message:String, callback:@escaping (String) -> Void) -> UIViewController {
        if let viewController = self.performTarget("YDList", action: "pushOCYDList", params: ["message":message,kCTMediatorParamsKeySwiftTargetModuleName:"YDList","callback":callback], shouldCacheTarget: false) as? UIViewController {
            return viewController
        }else{
            return UIViewController()
        }
    }
}
