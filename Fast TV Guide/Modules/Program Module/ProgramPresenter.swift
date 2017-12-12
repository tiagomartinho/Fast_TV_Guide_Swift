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
        viewController.durationLabel.text = String(describing: program.minutes)
        
        let startTime =  Date(timeIntervalSince1970: program.start)
        let formattedDate = format(date: startTime)
        
        viewController.startTimeLabel.text = formattedDate
    }
    
    func format(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm a"
        return dateFormatter.string(from:date)
    }
    
    func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
