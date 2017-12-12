//
//  HighlightsActionable.swift
//  Fast TV Guide
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

protocol HighlightsActionable {
    func show(program: Program)
}

extension AppController: HighlightsActionable {
    func show(program: Program) {
        let programNavigationController = ProgramWireframe.makeViewController()
        let viewController = programNavigationController.topViewController as! ProgramViewController
        ProgramWireframe.prepare(viewController: viewController, program: program)
        
        let navigationController = currentNavigationController()
        navigationController.present(programNavigationController, animated: true, completion: nil)
    }
}
