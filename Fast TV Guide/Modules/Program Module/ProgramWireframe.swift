//
//  ProgramWireframe.swift
//  Fast TV Guide
//
//  Created by Ronan on 12/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import UIKit

struct ProgramWireframe {
    
    static func makeViewController() -> UINavigationController {
        let moduleName = "Program"
        let storyboard = UIStoryboard.init(name: moduleName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: moduleName) as! UINavigationController
    }
    
    static func prepare(viewController: ProgramViewController, program: Program) {
        let presenter = ProgramPresenter(program: program)
        presenter.viewController = viewController
        
        viewController.presenter = presenter
    }
}
