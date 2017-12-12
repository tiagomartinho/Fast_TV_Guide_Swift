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
    
    func parse(data: Data) -> [Program] {
        return try! JSONDecoder().decode([Program].self, from: data)
    }
}
