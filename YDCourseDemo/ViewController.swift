//
//  ViewController.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/4.
//

import UIKit
import YDCourse

///壳工程进入到YDCourse
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        let oneBtn = UIButton()
        oneBtn.frame = CGRect(x: UIScreen.main.bounds.size.width/2 - 100, y: 100, width: 200, height: 50)
        oneBtn.setTitle("进入YDCourse", for: .normal)
        oneBtn.setTitleColor(.black, for: .normal)
        oneBtn.layer.masksToBounds = true
        oneBtn.layer.cornerRadius = 25
        oneBtn.layer.borderColor = UIColor.black.cgColor
        oneBtn.layer.borderWidth = 1
        oneBtn.addTarget(self, action: #selector(oneBtnClick), for: .touchUpInside)
        self.view.addSubview(oneBtn)
        
    }
    
    @objc func oneBtnClick(){
        let courseVC = YDCourseViewController()
        self.navigationController?.pushViewController(courseVC, animated: true)
    }


}

