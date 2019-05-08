//
//  BilibiliHomePageViewController.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/8.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

class BilibiliHomePageViewController: UIViewController {

    override func viewDidLoad() {
     
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupNavigationBar()
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

}
