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
        window.rootViewController = TabBarWireframe.makeTabBarController()
    }
}
