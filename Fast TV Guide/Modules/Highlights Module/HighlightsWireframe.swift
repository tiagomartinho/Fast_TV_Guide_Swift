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
        let viewController = UITableViewController()
        let navigationController = UINavigationController.init(rootViewController: viewController)
        return navigationController
    }
    
    static func prepare(viewController: UIViewController, action: Actionable) {
        
    }
}
