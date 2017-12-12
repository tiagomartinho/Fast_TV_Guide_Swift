//
//  Program.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

struct Program: Decodable {
    var identifier: String
    var start: Double
    var end: Double
    var minutes: Int
    var channelIdentifier: String
    var title: String
    var subTitle: String?
    var category: String
    var genre: String
    
    enum CodingKeys : String, CodingKey {
        case
        identifier = "recordId",
        title,
        category,
        start,
        end,
        minutes = "min",
        channelIdentifier = "channelId",
        subTitle,
        genre
    }
}
