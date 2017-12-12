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
    static func makeTabBarController(appController: AppController) -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let highlightsNavigationController = makeHighlightsNavigationController(appController: appController)
        let channelsNavigationController = makeNavigationController(viewController: makeChannelsViewController())
        let moviesNavigationController = makeNavigationController(viewController: makeMoviesViewController())
        let categoriesNavigationController = makeNavigationController(viewController: makeCategoriesViewController())
        
        tabBarController.viewControllers = [highlightsNavigationController,
        channelsNavigationController, moviesNavigationController, categoriesNavigationController]
        return tabBarController
    }
    
    fileprivate static func makeHighlightsNavigationController(appController: AppController)  -> UINavigationController {
        let highlightsActionable = appController as HighlightsActionable
        let highlightsDataProvider = appController.dataProvider as HighlightsDataProvider
        let highlightsViewController = makeHighlightsViewController(dataProvider: highlightsDataProvider, action: highlightsActionable)
        return makeNavigationController(viewController: highlightsViewController)
    }
    
    fileprivate static func makeNavigationController(viewController: UIViewController) -> UINavigationController {
        
        let navigationController = UINavigationController.init(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = UIColor.white
        
        return navigationController
    }
    
    fileprivate static func makeHighlightsViewController(dataProvider: HighlightsDataProvider,
                                                         action: HighlightsActionable) -> UIViewController {
        let viewController = HighlightsWireframe.makeTableViewController()
        HighlightsWireframe.prepare(viewController: viewController, dataProvider: dataProvider, action: action)
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
