//
//  TabBarWireframe.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit

struct TabBarWireframe {
    static func makeTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = makeTabbedViewControllers()
        return tabBarController
    }
    
    fileprivate static func makeTabbedViewControllers() -> [UIViewController] {
        return [makeNavigationController(viewController: makeHighlightsViewController()),
        makeNavigationController(viewController: makeChannelsViewController()),
        makeNavigationController(viewController: makeMoviesViewController()),
        makeNavigationController(viewController: makeCategoriesViewController())]
    }
    
    fileprivate static func makeNavigationController(viewController: UIViewController) -> UINavigationController {
        
        let navigationController = UINavigationController.init(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = UIColor.white
        
        return navigationController
    }
    
    fileprivate static func makeHighlightsViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.title = "Highlights"
        viewController.view.backgroundColor = UIColor.white
        viewController.tabBarItem.image = UIImage(named: "HighlightsIcon")
        return viewController
    }
    
    fileprivate static func makeChannelsViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.title = "Channels"
        viewController.view.backgroundColor = UIColor.white
        viewController.tabBarItem.image = UIImage(named: "ChannelsIcon")
        return viewController
    }
    
    fileprivate static func makeMoviesViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.title = "Movies"
        viewController.view.backgroundColor = UIColor.white
        viewController.tabBarItem.image = UIImage(named: "MoviesIcon")
        return viewController
    }
    
    fileprivate static func makeCategoriesViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.title = "Categories"
        viewController.view.backgroundColor = UIColor.white
        viewController.tabBarItem.image = UIImage(named: "CategoriesIcon")
        return viewController
    }
}
