//
//  AppController.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit

class AppController {
    let appData = AppData()
    let dataProvider: DataProvider
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        dataProvider = DataProvider(appData: appData)
    }
    
    func start() {
        dataProvider.load()
        showTabbarScene()
    }
    
    func showTabbarScene() {
        window.rootViewController = TabBarWireframe.makeTabBarController(appController: self)
    }
    
    func currentNavigationController() -> UINavigationController {
        let currentViewController = window.rootViewController

        if currentViewController is UITabBarController {
            let tabBarController = currentViewController as! UITabBarController
            let selectedIndex = tabBarController.selectedIndex
            return tabBarController.viewControllers![selectedIndex] as! UINavigationController
        }
        
        return fatalError()
    }
}
