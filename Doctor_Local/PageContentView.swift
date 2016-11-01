//
//  PageContentView.swift
//  Doctor_Local
//
//  Created by 胡迪 on 2016/10/28.
//  Copyright © 2016年 D.Huhu. All rights reserved.
//

import UIKit

let contentCellID = "contentCellID"

class PageContentView: UIView{
    
    //MARK: - 定义属性
    var childVCs: [UIViewController]
    weak var parentVC: UIViewController?
    
    //MARK: - 懒加载属性
    lazy var collectionView:UICollectionView = {[weak self] in
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = (self?.bounds.size)!
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame:CGRect.zero,collectionViewLayout:layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true
        collectionView.bounces = false
        collectionView.scrollsToTop = false
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: contentCellID)
//        collectionView.delegate = self
        
        return collectionView
    }()
    
    init(frame: CGRect,childVCs: [UIViewController],parentVC: UIViewController?) {
        self.childVCs = childVCs
        self.parentVC = parentVC
        super.init(frame:frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - 设置UI
extension PageContentView{
    func setupUI(){
        for childVC in childVCs
        {
            parentVC?.addChildViewController(childVC)
        }
        
        addSubview(collectionView)
        collectionView.frame = bounds
        collectionView.layer.cornerRadius = 5
    }
}

//MARK: - 数据源
extension PageContentView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return childVCs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellID, for: indexPath)
        
        for subview in cell.contentView.subviews {
                        subview.removeFromSuperview()
                    }
        
        let childVC = childVCs[indexPath.item]
        childVC.view.frame = cell.contentView.bounds
        cell.contentView.addSubview(childVC.view)
        
        return cell
    }
}
//extension PageContentView: UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return childVCs.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellID, for: indexPath)
//        
//        for subview in cell.contentView.subviews {
//            subview.removeFromSuperview()
//        }
//        
//        let childVC = childVCs[indexPath.item]
//        childVC.view.frame = cell.contentView.bounds
//        cell.contentView.addSubview(childVC.view)
//        
//        return cell
//    }
//}
