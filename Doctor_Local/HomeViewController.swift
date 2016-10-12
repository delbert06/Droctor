//
//  HomeViewController.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/4.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var dataView: UIView!
    
    var list = ["个人信息","体质信息","行为习惯","签约情况"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "档案信息"
        sv()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sv(){
        let hight = 50
        for i in 0..<list.count{
            let label = UILabel()
            label.frame = CGRect(x: 20, y: i*hight, width:Int(scrollView.bounds.size.width), height: hight)
            label.text = list[i]
//            label.textAlignment = .center
            scrollView.addSubview(label)
            label.tag = i
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
