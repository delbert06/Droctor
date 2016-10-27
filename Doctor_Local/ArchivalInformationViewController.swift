//
//  ArchivalInformationViewController.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/27.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

private let ktitleViewH : CGFloat = UIScreen.main.bounds.width - kNavigationBarH - kStautusBarH

class ArchivalInformationViewController: UIViewController {
    
    @IBOutlet weak var leftView: UIView!
//    lazy var titleView: TitleView = {
////        let titleFrame = CGRect(x: 0, y: kStautusBarH + kNavigationBarH, width: 200, height: ktitleViewH)
//        let titleFrame = CGRect(x: 0, y: 0, width: 200, height: ktitleViewH)
//        let titles = ["个人信息","体质信息","行为习惯","签约情况"]
//        let titleView = TitleView(frame: titleFrame, titles: titles, normalImg: [""], highlightImg: [""])        
//        return titleView
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupUI()
        print("1")
    }
}

//extension ArchivalInformationViewController{
//    func setupUI(){
//        leftView.addSubview(titleView)
//    }
//}
