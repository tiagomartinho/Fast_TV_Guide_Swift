//
//  Channel.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import ObjectMapper

struct Channel: Mappable {
    var title: String?
    var identifier: String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        title       <- map["title"]
        identifier  <- map["channelId"]
    }
}
