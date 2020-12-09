//
//  CTMediator+YDCourse.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/7.
//

import UIKit
import CTMediator

///跳转某组件Swift实现的类时需要用Swift实现CTMediator的extension
///调用Swift组件，要创建CTMediator的extension，命名规则为CTMediator+（组件名），例如：CTMediator+YDRouter
public extension CTMediator {
    ///方法名要以组件名开头，命名规则为YDRouter_（方法名），例如：YDRouter_pushHomePage。
    ///获取Swift实现的HomepageVC
    func YDCourse_pushHomePage(_ message:String, callback:@escaping (String) -> Void) -> UIViewController {
        
        //组装参数，调用中间件
        if let viewController = self.performTarget("YDHomePage", action: "PushHomePage", params: ["message":message,kCTMediatorParamsKeySwiftTargetModuleName:"YDHomePage","callback":callback], shouldCacheTarget: false) as? UIViewController {
            return viewController
        }else{
            //没有找到对应组件的处理，应视情况而定
            print("==============没有找到相关组件==============")
            return UIViewController()
        }
    }
}
