//
//  ChannelsService.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

class ChannelsService: Service {
    func load<Channel>() -> [Channel] {
        let data = try! MockData.load(name: "Channels")
        let parser = ChannelsParser()
        let channels = parser.parse(data: data!) as! [Channel]
        return channels
    }
}
