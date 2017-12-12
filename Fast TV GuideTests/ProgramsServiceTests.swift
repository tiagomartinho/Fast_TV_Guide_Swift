//
//  ProgramsServiceTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class ProgramsServiceTests: XCTestCase {
    let channelId = "ARD"
    let numberOfProgrmas = 44
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoadPrograms() {
        let data = try! MockData.loadPrograms(channelId: channelId)
        XCTAssertNotNil(data)
        
        let parser = ProgramsParser()
        let programs: [Program] = parser.parse(data: data!)
        XCTAssertNotNil(programs)
        XCTAssertTrue(programs.count == numberOfProgrmas)
    }
    
    func testProgramsService() {
        let channelsWithPrograms: [String:[Program]] = ProgramsService.load(channelIds: [channelId])
        XCTAssertNotNil(channelsWithPrograms)
        
        // We should have programs for ARD,
        let programs = channelsWithPrograms[channelId]
        XCTAssertNotNil(programs)
        XCTAssertTrue(programs?.count == numberOfProgrmas)
    }
}
