//
//  BilibiliTabBarController.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/8.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

class BilibiliTabBarController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = UIColor.colorHex(TemplateAppTools.ConstantHex.AppColor)
        
        let homeNavi = UINavigationController.init(rootViewController: BilibiliHomePageViewController())
        homeNavi.tabBarItem.title = "首页"
        homeNavi.tabBarItem.image = UIImage.init(named: "tab_home")
        homeNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_home_hover")
        
        let channelNavi = UINavigationController.init(rootViewController: BilibiliChannelPageViewController())
        channelNavi.tabBarItem.title = "频道"
        channelNavi.tabBarItem.image = UIImage.init(named: "tab_channel")
        channelNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_channel_hover")
        
        let storyNavi = UINavigationController.init(rootViewController: BilibiliStoryTableViewController())
        storyNavi.tabBarItem.title = "动态"
        storyNavi.tabBarItem.image = UIImage.init(named: "tab_story")
        storyNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_story_hover")
        
        let memberShoppingNavi = UINavigationController.init(rootViewController: BilibiliMemberShoppingViewController())
        memberShoppingNavi.tabBarItem.title = "会员购"
        memberShoppingNavi.tabBarItem.image = UIImage.init(named: "tab_memberShopping")
        memberShoppingNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_memberShopping_hover")
        
        let userProfileNavi = UINavigationController.init(rootViewController: BilibiliUserProfileViewController())
        userProfileNavi.tabBarItem.title = "我的"
        userProfileNavi.tabBarItem.image = UIImage.init(named: "tab_mine")
        userProfileNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_mine_hover")
        
        viewControllers = [homeNavi, channelNavi, storyNavi, memberShoppingNavi, userProfileNavi]
    }
}
