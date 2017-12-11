//
//  DataProvider.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

class DataProvider {
    fileprivate let appData: AppData
    
    init(appData: AppData) {
        self.appData = appData
        // load()
    }
    
    func load() {
        appData.channelsWithPrograms = ProgramsService.load()
        appData.channels = ChannelsService.load()
        appData.highlightIdentifiers = HighlightsService.load()
        appData.categories = CategoriesService.load()
    }
    
    func highlights() -> [Program] {
        // Parse through the data for the ids.
        
        var programHighlights: [Program] = []
        for (_, programs) in appData.channelsWithPrograms {
            programHighlights.append(contentsOf: filter(identifiers: appData.highlightIdentifiers, programs: programs))
        }
        
        return programHighlights
    }
    
    func filter(identifiers: [String], programs: [Program]) -> [Program] {
        var matchedPrograms: [Program] = []
        
        for identifier in identifiers {
            if let match = programs.first(where: { $0.identifier == identifier } )  {
                matchedPrograms.append(match)
            }
        }
        
        return matchedPrograms
    }
}
