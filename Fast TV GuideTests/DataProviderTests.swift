//
//  DataProviderTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 11/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class DataProviderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFilterWith2Items() {
        let appData = AppData()
        let serviceProvider = MockServiceProvider()
        let dataProvider = DataProvider(appData: appData, serviceProvider: serviceProvider)
        
        XCTAssertNotNil(dataProvider)
    }
}

class ChannelsMockService: ChannelsService {
    override func load<Channel>() -> [Channel] {
        let data = try! MockData.load(name: "Channels")
        let parser = ChannelsParser()
        let channels = parser.parse(data: data!) as! [Channel]
        return channels
    }
}

class MockServiceProvider: ServiceProvider {
    override func makeChannelsService() -> ChannelsService {
        return ChannelsMockService()
    }
}

