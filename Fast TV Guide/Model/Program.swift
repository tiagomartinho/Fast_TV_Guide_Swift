//
//  Program.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import ObjectMapper

struct Program {
    var identifier: String?
    var start: Double?
    var end: Double?
    var minutes: Int?
    var channelIdentifier: String?
    var title: String?
    var subTitle: String?
    var category: String?
    var genre: String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        identifier  <- map["recordId"]
        title       <- map["title"]
        category    <- map["category"]
        start       <- map["start"]
        end         <- map["end"]
        minutes     <- map["min"]
        channelIdentifier <- map["channelId"]
        subTitle    <- map["subTitle"]
        genre       <- map["genre"]
    }
}
