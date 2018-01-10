//
//  AppDelegate.swift
//  Example
//
//  Created by iOS Developer on 1/10/18.
//  Copyright © 2018 Genysis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    fileprivate func setupNavigationApperance() {
        let navApperance = UINavigationBar.appearance()
        navApperance.barTintColor = UIColor().colorFromHexString("50A7C2")
        navApperance.tintColor = UIColor.white
        navApperance.isTranslucent = false
        navApperance.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        
        setupNavigationApperance()
        return true
    }
}

