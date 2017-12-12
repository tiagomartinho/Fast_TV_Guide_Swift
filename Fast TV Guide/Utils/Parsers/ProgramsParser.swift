//
//  ProgramsParser.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation
import ObjectMapper

typealias ChannelPrograms = [String:[Program]]

struct ProgramsParser {
    func parse(data: Data) -> ChannelPrograms {
        var channelPrograms: ChannelPrograms = [:]
        let channelsWithPrograms = try! JSONSerialization.jsonObject(with: data, options: []) as! [String:[[String:Any]]]
        
        for (key, programsData) in channelsWithPrograms {
            // let channels = try! JSONDecoder().decode([Channel].self, from: data)
            let programs = try! JSONDecoder().decode([Program].self, from: programsData)
            //let programs: [Program] = Mapper<Program>().mapArray(JSONArray: programsData)
            channelPrograms[key] = programs
        }
        
        return channelPrograms
    }
}
