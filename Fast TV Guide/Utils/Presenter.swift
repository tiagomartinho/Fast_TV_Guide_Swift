//
//  Presenter.swift
//  Fast TV Guide
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit


protocol Actionable { }

protocol Presentable {
    associatedtype Action
}

class Presenter<Controller:UIViewController, A>: Presentable {
    typealias Action = A
    unowned let viewController: Controller
    let action: Action
    
    init(viewController: Controller, action:Action) {
        self.viewController = viewController
        self.action = action
    }
}
