//
//  Channel.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    let title: String
    let identifier: String
    
    enum CodingKeys : String, CodingKey {
        case
        title,
        identifier = "channelId"
    }
}
