//
//  ChannelsServiceTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class ChannelsServiceTests: XCTestCase {
    let numberOfChannels = 4 // Should be 4 in the mock data file.
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChannelsService() {
        let channels: [Channel] = ChannelsService.load()
        XCTAssertNotNil(channels)
        XCTAssertTrue(channels.count == numberOfChannels, "Number of channels should be 4")
    }
}
