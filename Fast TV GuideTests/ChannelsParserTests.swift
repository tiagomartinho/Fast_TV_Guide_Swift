//
//  ChannelsParserTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class ChannelsParserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testParse() {
        let numberOfChannels = 4 // Should be 4 in the mock data file.
        let data = try! MockData.load(name: "Channels")
        XCTAssertNotNil(data)
        
        let parser = ChannelsParser()
        let channels = parser.parse(data: data!)
        XCTAssert(channels.count == numberOfChannels)
    }

}
