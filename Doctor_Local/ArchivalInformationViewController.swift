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
    @IBOutlet weak var dataView: UIView!
    
    //MARK: - 懒加载属性
    lazy var titleView: TitleView = {
//        let titleFrame = CGRect(x: 0, y: kStautusBarH + kNavigationBarH, width: 200, height: ktitleViewH)
        let titleFrame = CGRect(x: 0, y: 0, width: 200, height: ktitleViewH)
        let titles = ["个人信息","体质信息"]
        let titleView = TitleView(frame: titleFrame, titles: titles, normalImg: [""], highlightImg: [""])        
        return titleView
    }()
    
    lazy var contentView: PageContentView = {
        
        let testFram = CGRect(x: 0, y: 0, width: kcontentW, height: kcontentH)
        
        var childVCs = [UIViewController]()
        childVCs.append(PersonInfoViewController())
        childVCs.append(PhysiqueViewController())
        
        let contentView = PageContentView(frame: testFram, childVCs: childVCs, parentVC: self)
        
        return contentView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension ArchivalInformationViewController{
    func setupUI(){
        leftView.addSubview(titleView)
        dataView.addSubview(contentView)
        print("\(contentView.backgroundColor)")
        
        
    }
}
