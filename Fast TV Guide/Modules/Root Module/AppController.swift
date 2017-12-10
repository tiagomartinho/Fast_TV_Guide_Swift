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
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        showTabbarScene()
    }
    
    func showTabbarScene() {
        window.rootViewController = TabBarWireframe.makeTabBarController()
    }
}
