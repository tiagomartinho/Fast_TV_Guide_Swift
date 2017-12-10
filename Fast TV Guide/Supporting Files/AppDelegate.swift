//
//  AppDelegate.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appController: AppController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        appController = AppController.init(window: window!)
        appController?.start()
        
        window?.makeKeyAndVisible()
        return true
    }
}
