//
//  ProgramPresenter.swift
//  Fast TV Guide
//
//  Created by Ronan on 12/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import UIKit

class ProgramPresenter {
    let program: Program!
    weak var viewController: ProgramViewController!
    
    init(program: Program) {
        self.program = program
    }
    
    func viewDidLoad() {
        // set all the data in the view.
        
        viewController.titleLabel.text = program.title
        viewController.subTitleLabel.text = program.subTitle
    }
    
    func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
