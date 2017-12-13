//
//  ProgramsService.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

typealias ChannelsWithPrograms = [String:[Program]]

class ProgramsService {
    func load<ChannelsWithPrograms>(channelIds: [String]) -> ChannelsWithPrograms {
        var channelsWithPrograms = [String:[Program]]()
        
        for channelId in channelIds {
            let programs = load(channelId: channelId)
            channelsWithPrograms[channelId] = programs
        }
        
        return channelsWithPrograms as! ChannelsWithPrograms
    }
    
    fileprivate func load(channelId: String) -> [Program] {
        let data = try! MockData.loadPrograms(channelId: channelId)
        let parser = ProgramsParser()
        let programs: [Program] = parser.parse(data: data!)
        return programs
    }
}
