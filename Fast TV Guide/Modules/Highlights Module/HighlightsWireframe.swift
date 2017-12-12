//
//  HighlightsWireframe.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit

struct HighlightsWireframe {
    static func makeNavigationController() -> UINavigationController {
        let viewController = HighlightsTableViewController()
        let navigationController = UINavigationController.init(rootViewController: viewController)
        return navigationController
    }
    
    static func makeTableViewController() -> HighlightsTableViewController {
        return HighlightsTableViewController()
    }
    
    static func prepare(viewController: HighlightsTableViewController, dataProvider: HighlightsDataProvider, action: HighlightsActionable) {
        let presenter = HighlightsPresenter()
        let dataSource = HighlightsTableViewDataSource()
        let delegate = HighlightsTableViewDelegate()
        
        presenter.action = action
        presenter.delegate = delegate
        presenter.dataSource = dataSource
        presenter.dataProvider = dataProvider
        presenter.viewController = viewController
        
        viewController.tableView.delegate = delegate
        viewController.tableView.dataSource = dataSource
        
        dataSource.presenter = presenter
        delegate.presenter = presenter
    }
}
