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
        
        viewController.titleLabel.text = program.title
        viewController.subTitleLabel.text = program.subTitle
        viewController.channelLabel.text = program.channelIdentifier
        viewController.categoryLabel.text = program.category
        viewController.genreLabel.text = program.genre
        
        // let startTime = program.start
        
        viewController.durationLabel.text = String(describing: program.minutes)
        viewController.startTimeLabel.text = "12:30 AM"
    }
    
    func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
