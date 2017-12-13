//
//  ServiceProvider.swift
//  Fast TV Guide
//
//  Created by Ronan on 13/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

class ServiceProvider {
    func makeChannelsService() -> ChannelsService {
        return ChannelsService()
    }
    
    func makeProgramsSevice() -> ProgramsService {
        return ProgramsService()
    }
    
    func makeHighlightsService() -> HighlightsService {
        return HighlightsService()
    }
    
    func makeCategoriesService() -> CategoriesService {
        return CategoriesService()
    }
}
