//
//  HighlightsPresenter.swift
//  Fast TV Guide
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

class HighlightsPresenter {
    var delegate: HighlightsTableViewDelegate!
    var dataSource: HighlightsTableViewDataSource!
    var dataProvider: HighlightsDataProvider!
    var action: HighlightsActionable!
    weak var viewController: HighlightsTableViewController!
    
    func didSelectRow(at indexPath: IndexPath) {
        let program = dataProvider.highlights()[indexPath.row] as Program
        
        action.show(program: program)
    }
}
