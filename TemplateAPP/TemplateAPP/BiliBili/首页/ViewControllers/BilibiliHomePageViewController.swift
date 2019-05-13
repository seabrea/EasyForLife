//
//  BilibiliHomePageViewController.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/8.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit
import SnapKit

class BilibiliHomePageViewController: UIViewController {

    let collectionView: UICollectionView = UICollectionView.init(frame: CGRect.zero)
    let collectionViewCellWidth: CGFloat = (TemplateAppTools.mainWindow().bounds.size.width - 50)/2
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupNavigationBar()
        setupCollectionView()
    }
    
    private func setupNavigationBar() {
        
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.colorHex(TemplateAppTools.ConstantHex.AppColor)
        
        let avatar = UIButton(type: .custom)
        avatar.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        avatar.setBackgroundImage(UIImage(named: "userAvatar"), for: .normal)
        avatar.layer.cornerRadius = 15
        avatar.layer.masksToBounds = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: avatar)
        
        let gameButton = UIButton(type: .custom)
        gameButton.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        gameButton.setBackgroundImage(UIImage(named: "navi_game"), for: .normal)

        let chatButton = UIButton(type: .custom)
        chatButton.bounds = CGRect(x: 0, y: 0, width: 30, height: 30)
        chatButton.setBackgroundImage(UIImage(named: "navi_chat"), for: .normal)
        
        self.navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: chatButton), UIBarButtonItem(customView: gameButton)]
        
        let searchBtton = UIButton(type: .custom)
        searchBtton.backgroundColor = UIColor(white: 0, alpha: 0.3)
        searchBtton.layer.borderWidth = 0.5
        searchBtton.layer.borderColor = UIColor(white: 0, alpha: 0.2).cgColor
        searchBtton.layer.cornerRadius = 15
        
        let searchBttonWidth = self.view.bounds.size.width - 150
        searchBtton.frame = CGRect(x: 0, y: 0, width: searchBttonWidth, height: 30)
        
        self.navigationItem.titleView = searchBtton
    }
    
    private func setupCollectionView() {
        
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (maker) in
            maker.edges.equalToSuperview()
        }
    }

}

extension BilibiliHomePageViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionViewCellWidth, height: collectionViewCellWidth)
    }
    
}
