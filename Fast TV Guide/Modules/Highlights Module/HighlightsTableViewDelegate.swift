//
//  HighlightsTableViewDelegate.swift
//  Fast TV Guide
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import UIKit

class HighlightsTableViewDelegate: NSObject, UITableViewDelegate {
    var presenter: HighlightsPresenter!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        presenter.didSelectRow(at: indexPath)
    }
}
