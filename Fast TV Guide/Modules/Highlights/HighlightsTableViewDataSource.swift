//
//  HighlightsTableViewDataSource.swift
//  Fast TV Guide
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit

class HighlightsTableViewDataSource: NSObject, UITableViewDataSource {
     var presenter: HighlightsPresenter!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.dataProvider.highlights().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let program = presenter.dataProvider.highlights()[indexPath.row] as Program
        cell.textLabel?.text = program.title
        return cell
    }
}
