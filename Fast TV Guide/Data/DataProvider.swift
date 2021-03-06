//
//  DataProvider.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

protocol HighlightsDataProvider {
    func highlights() -> [Program]
}

class DataProvider {
    fileprivate let appData: AppData
    fileprivate let serviceProvider: ServiceProvider
    
    init(appData: AppData, serviceProvider: ServiceProvider) {
        self.appData = appData
        self.serviceProvider = serviceProvider
    }
    
    func load() {
        appData.channels = serviceProvider.makeChannelsService().load()
        appData.highlightIdentifiers = serviceProvider.makeHighlightsService().load()
        appData.categories = serviceProvider.makeCategoriesService().load()
        appData.channelsWithPrograms = serviceProvider.makeProgramsSevice().load(channelIds: channelIds())
        
        // appData.channelsWithPrograms = ProgramsService.load(channelIds:channelIds())
        
        prepareHighlights()
    }
    
    func prepareHighlights() {
        appData.highlights =
            processHighlightIdentifiers(
            channelsWithPrograms: appData.channelsWithPrograms,
            identifiers: appData.highlightIdentifiers)
    }
    
    func processHighlightIdentifiers(channelsWithPrograms: [String : [Program]], identifiers: [String]) -> [Program] {
        // Parse through the data for the ids.
        
        var programHighlights: [Program] = []
        for (_, programs) in channelsWithPrograms {
            programHighlights.append(contentsOf: filter(identifiers: identifiers, programs: programs))
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
    
    func channelIds() -> [String] {
        var channelIds: [String] = []
        for channel in appData.channels {
            channelIds.append(channel.identifier)
        }
        return channelIds
    }
}

extension DataProvider: HighlightsDataProvider {
    func highlights() -> [Program] {
        return appData.highlights
    }
}
