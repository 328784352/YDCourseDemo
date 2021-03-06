//
//  YDCourseViewController.swift
//  YDCourseDemo
//
//  Created by 小权权 on 2020/12/4.
//

import UIKit
import CTMediator

public class YDCourseViewController: UIViewController {

    let wwidth = UIScreen.main.bounds.size.width
    let messageLabel = UILabel()
    public var message:String?
    
    typealias YDCourseCallback = (_ param:String) -> Void
    var callback:YDCourseCallback? = nil
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        let oneBtn = UIButton()
        oneBtn.frame = CGRect(x: wwidth/2 - 100, y: 100, width: 200, height: 50)
        oneBtn.setTitle("进入YDHomepage", for: .normal)
        oneBtn.setTitleColor(.black, for: .normal)
        oneBtn.layer.masksToBounds = true
        oneBtn.layer.cornerRadius = 25
        oneBtn.layer.borderColor = UIColor.black.cgColor
        oneBtn.layer.borderWidth = 1
        oneBtn.addTarget(self, action: #selector(oneBtnClick), for: .touchUpInside)
        self.view.addSubview(oneBtn)
        
        let twoBtn = UIButton()
        twoBtn.frame = CGRect(x: wwidth/2 - 100, y: 200, width: 200, height: 50)
        twoBtn.setTitle("进入YDList", for: .normal)
        twoBtn.setTitleColor(.black, for: .normal)
        twoBtn.layer.masksToBounds = true
        twoBtn.layer.cornerRadius = 25
        twoBtn.layer.borderColor = UIColor.black.cgColor
        twoBtn.layer.borderWidth = 1
        twoBtn.addTarget(self, action: #selector(twoBtnClick), for: .touchUpInside)
        self.view.addSubview(twoBtn)
        
        
        messageLabel.text = "回调消息："
        messageLabel.numberOfLines = 0
        messageLabel.backgroundColor = .black
        messageLabel.textColor = .white
        messageLabel.frame = CGRect(x: 50, y: 300, width:wwidth - 100 , height: 200)
        messageLabel.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(messageLabel)
        
        // Do any additional setup after loading the view.
    }
    
    ///跳转到homepage
    @objc func oneBtnClick() {
        let nav = UINavigationController.init(rootViewController: CTMediator.sharedInstance().YDCourse_pushHomePage("从Course调用过来的", callback:{[weak self] (result) in
            self?.messageLabel.text = "回调消息：\n\(result)"
        }))
        self.present(nav, animated: true) {

        }
    }
    
    ///跳转到list
    @objc func twoBtnClick() {
        let list = CTMediator.sharedInstance().ydCourse_OCpushList("从Course调用过来的", callback:{[weak self] (result) in
            self?.messageLabel.text = "回调消息：\n\(result)"
        })
        self.navigationController?.pushViewController(list, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
