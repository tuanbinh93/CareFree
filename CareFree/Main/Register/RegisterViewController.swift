////
////  RegisterViewController.swift
////  CareFree
////
////  Created by 张驰 on 2019/6/12.
////  Copyright © 2019 张驰. All rights reserved.
////
//
//import UIKit
//import Alamofire
//import ProgressHUD
//import SwiftyJSON
//class RegisterViewController: UIViewController {
//
//    @IBOutlet weak var phoneNumber: UITextField!
//
//    @IBOutlet weak var verify: UITextField!
//
//    @IBOutlet weak var password: UITextField!
//
//    @IBAction func sendCheckBtn(_ sender: UIButton) {
//        ProgressHUD.show("正在发送验证码")
//        let registerUrl = "http://47.107.37.32:8081/api1.1/mail/" + phoneNumber.text!
//        Alamofire.request(registerUrl).responseJSON{(responds) in
//            guard responds.result.isSuccess else {
//                ProgressHUD.showError("网络请求失败");
//                ProgressHUD.dismiss();
//                print("网络请求失败"); return
//            }
//            if let value = responds.result.value {
//                print("value=",value)
//                let json = JSON(value)
//                print(json)
//                if json["msg"] == "successful" {
//
//                    ProgressHUD.showSuccess("发送成功")
//                }
//                else {
//                    ProgressHUD.showError("发送失败")
//                }
//            }
//        }
//    }
//
//    @IBAction func registerBtn(_ sender: UIButton) {
//        ProgressHUD.show("正在注册")
//        let registerUrl =  "http://47.107.37.32:8081/api1.1/user/" + phoneNumber.text! + "/" + password.text! + "/" + verify.text!
//        Alamofire.request(registerUrl,method: .post).responseJSON{(responds) in
//            print(registerUrl)
//            guard responds.result.isSuccess else {
//                ProgressHUD.showError("注册失败，请稍后再试");
//                print("网络请求失败"); return
//            }
//            if let value = responds.result.value {
//                print("value=",value)
//                let json = JSON(value)
//                print(json)
//                //if json["msg"] == ""
//                ProgressHUD.showSuccess("注册成功")
//                self.navigationController?.popToRootViewController(animated: true)
//            }
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.navigation.item.leftBarButtonItem = UIBarButtonItem.init(customView: leftBarButton)
//        self.navigation.item.title = "注册账号"
//        self.navigation.bar.isShadowHidden = true
//        self.navigation.bar.alpha = 0
//
//
//    }
//
//
//
//    @IBAction func backgroundTap(_ sender: Any) {
//        dismissKeyboard()
//    }
//    func dismissKeyboard(){
//        self.view.endEditing(false)
//    }
//    // 左边返回按钮
//    private lazy var leftBarButton:UIButton = {
//        let button = UIButton.init(type: .custom)
//        button.frame = CGRect(x:10, y:0, width:30, height: 30)
//        button.setTitle("←", for: .normal)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 36)
//        button.setTitleColor(UIColor.black, for: .normal)
//        button.addTarget(self, action: #selector(back), for: UIControl.Event.touchUpInside)
//        button.tintColor = UIColor.red
//        return button
//    }()
//
//    @objc func back(){
//        self.navigationController?.popViewController(animated: true)
//    }
//}
