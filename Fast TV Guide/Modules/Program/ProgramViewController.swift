//
//  ProgramViewController.swift
//  Fast TV Guide
//
//  Created by Ronan on 12/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import UIKit

class ProgramViewController: UIViewController {
    var presenter: ProgramPresenter!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        presenter.viewDidLoad()
    }
    
    @IBAction func closeButtonAction() {
        presenter.dismiss()
    }
}
