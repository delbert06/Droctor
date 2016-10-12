//
//  LoginViewController.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/4.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBAction func loginBtn(_ sender: AnyObject) {
        if (accountText.text == "admin" && passwordText.text=="123456"){
            self.performSegue(withIdentifier: "login", sender: self)
            print("登录成功")
        }
        else{
            print("登录失败")
//            let cancelAction = UIAlertAction(title: "取消", style: .destructive, handler: nil)
//            let alertController = UIAlertController(title: "提示", message: "账号或密码错误", preferredStyle: .alert)
//
//            let okAction = UIAlertAction(title: "好的", style: .default, handler: nil)
//            alertController.addAction(cancelAction)
//            alertController.addAction(okAction)
//            self.present(alertController, animated: true, completion: nil)
            let albert = UIAlertController(title: "提示", message: "账号或密码错误", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            
            albert.addAction(cancel)
            self.present(albert, animated: true, completion: nil)
        }
    }
    
    func wrongpwd(){

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "返回", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        
//    }


}
