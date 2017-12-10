//
//  ChannelsParser.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import ObjectMapper

struct ChannelsParser {
    func parse(data: Data) -> [Channel] {
        let channelsString = String.init(data: data, encoding: String.Encoding.utf8)
        // let channelsData = try! JSONSerialization.data(withJSONObject: data, options: [])
        
        let channels = Mapper<Channel>().mapArray(JSONString: channelsString!)
        return channels!
    }
}
