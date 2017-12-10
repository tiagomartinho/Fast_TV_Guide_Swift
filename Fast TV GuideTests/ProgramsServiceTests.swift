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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoadPrograms() {
        let data = try! MockData.load(name: "Programs")
        XCTAssertNotNil(data)
        
        let parser = ProgramsParser()
        let channelsWithPrograms: [String: [Program]] = parser.parse(data: data!)
        XCTAssertNotNil(channelsWithPrograms)
        
        // We should have programs for ARD,
        let programs = channelsWithPrograms["ARD"]
        XCTAssertNotNil(programs)
        XCTAssertTrue(programs?.count == 44)
    }
}
