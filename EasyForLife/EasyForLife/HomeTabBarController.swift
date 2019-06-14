//
//  HomeTabBarController.swift
//  EasyForLife
//
//  Created by Bob on 2019/6/13.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class HomeTabBarController: RAMAnimatedTabBarController {

    override func viewDidLoad() {
        
        createTabBarControllers()
        super.viewDidLoad()
        createAddButton()
    }
    
    private func createTabBarControllers() {
        
        let _contentVC = ContentTableViewController()
        let _settingVC = SettingTableViewController()
        
        configureViewController(_contentVC)
        configureViewController(_settingVC)
    }
    
    private func configureViewController(_ viewController: UIViewController) {
        
        viewController.view.backgroundColor = .orange
        let navi = UINavigationController(rootViewController: viewController)
        let barItem = RAMAnimatedTabBarItem(title: "", image: UIImage(named: "reminder"), selectedImage: UIImage(named: "note")?.withRenderingMode(.alwaysOriginal))
        let anime = RAMBounceAnimation()
        barItem.animation = anime
        
        addChild(navi)
        navi.tabBarItem = barItem
    }
    
    private func createAddButton() {
        
        let addBtn = UIButton()
        let barSize = tabBar.bounds.size
        addBtn.bounds = CGRect(x: 0, y: 0, width: barSize.height, height: barSize.height)
        addBtn.center = CGPoint(x: barSize.width/2, y: barSize.height/2)
        addBtn.backgroundColor = .gray
        addBtn.tag = 10000
        tabBar.addSubview(addBtn)
        addBtn.addTarget(self, action: #selector(clickAddBtnHandler), for: .touchUpInside)
    }
    
    @objc private func clickAddBtnHandler() {
        print("add btn")
    }
}

extension UITabBar {
    
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        if !self.isHidden {
            
            let targetView = viewWithTag(10000)
            let newPoint = convert(point, to: targetView)
            if (targetView?.point(inside: newPoint, with: event)) != nil {
                return targetView
            }
            else {
                return super.hitTest(point, with: event)
            }
        }
        else {
            return super.hitTest(point, with: event)
        }
    }
}
