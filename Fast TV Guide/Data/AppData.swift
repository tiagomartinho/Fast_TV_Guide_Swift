//
//  AppData.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

class AppData {
    var channels: [Channel] = []
    var channelsWithPrograms: [String : [Program]] = [:]
    var highlightIdentifiers: [String] = []
    var categories: [String] = []
}
