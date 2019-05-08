//
//  AppDelegate.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/7.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mainWindow = UIWindow.init(frame: UIScreen.main.bounds)
        window = mainWindow
        
        let mainViewController = ChooseMenuTableViewController(style: .grouped)
        mainWindow.rootViewController = mainViewController
        
        mainWindow.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}

