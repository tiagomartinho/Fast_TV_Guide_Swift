//
//  ChannelsParser.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

struct ChannelsParser {
    func parse(data: Data) -> [Channel] {
        let channels = try! JSONDecoder().decode([Channel].self, from: data)
        return channels
    }
}
