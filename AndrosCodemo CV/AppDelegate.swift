//
//  AppDelegate.swift
//  AndrosCodemo CV
//
//  Created by Andros Codemo on 8/9/19.
//  Copyright © 2019 Andros Codemo. All rights reserved.
//

import UIKit

@UIApplicationMain class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()
        navigationController.navigationBar.tintColor     = .black
        navigationController.navigationBar.shadowBlur    = 4
        navigationController.navigationBar.shadowColor   = .black
        navigationController.navigationBar.shadowOpacity = 0.4
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.shadowOffset  = CGSize(width : 0,
                                                                  height: 4)
        navigationController.navigationBar.barTintColor = UIColor(red  : 225/255,
                                                                  green: 225/255,
                                                                  blue : 225/255,
                                                                  alpha: 1)
        navigationController.viewControllers = [HModuleBuilder().build()]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
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
