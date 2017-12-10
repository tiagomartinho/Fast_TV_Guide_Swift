//
//  ProgramsService.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

typealias ChannelsWithPrograms = [String:[Program]]

class ProgramsService: Service {
    static func load<ChannelsWithPrograms>() -> ChannelsWithPrograms {
        let data = try! MockData.load(name: "Programs")
        let parser = ProgramsParser()
        let channelsWithPrograms: [String: [Program]] = parser.parse(data: data!)
        return channelsWithPrograms as! ChannelsWithPrograms
    }
}

