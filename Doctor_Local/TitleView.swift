//
//  TitleView.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/27.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

class TitleView: UIView {
    //MARK: -定义属性
    var titles: [String]
    var normalImgs: [String]
    var hightlightImgs: [String]
    
    //MARK: -懒加载属性
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.scrollsToTop = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.bounces = false
        
        return scrollView
    }()
    
    lazy var titleButtons :[UIButton] = [UIButton]()
    
    init(frame: CGRect,titles: [String],normalImg: [String],highlightImg: [String]) {
        self.titles = titles
        self.normalImgs = normalImg
        self.hightlightImgs = highlightImg
        
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TitleView{
    func setupUI(){
        addSubview(scrollView)
        scrollView.frame = bounds
        scrollView.backgroundColor = UIColor.gray
        setupButtons()
    }
    
    func setupButtons(){
        let buttonH :CGFloat = 50
        let buttonW :CGFloat = frame.width
        let buttonX :CGFloat = 0
        for(index,title) in titles.enumerated(){
            let button = UIButton(type: .custom)
            
            button.tag = index
            button.setTitle(title, for: .normal)
            button.setTitle(title, for: .highlighted)
            button.setTitleColor(UIColor.black, for: .normal)
            button.setTitleColor(UIColor.white, for: .highlighted)
//            for normalImg in normalImgs{
//                button.setImage(UIImage.init(named: normalImg), for: .normal)
//            }
//            for hightlightImg in hightlightImgs
//            {
//                button.setImage(UIImage.init(named: hightlightImg), for: .highlighted)
//            }
            
            let buttonY :CGFloat = buttonH * CGFloat(index)
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
        
            button.addTarget(self, action: #selector(buttonTapped(sender:)), for: UIControlEvents.touchUpInside)
            
            scrollView.addSubview(button)
            titleButtons.append(button)
        }
    }
    
    @objc func buttonTapped(sender:UIButton?){
        print("我点击过了")
    }
}
