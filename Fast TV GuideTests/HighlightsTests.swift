//
//  HighlightsTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class HighlightsTests: XCTestCase {
    let numberOfHighlights = 7
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoadHighlightsFile() {
        let data = try! MockData.load(name: "Highlights")
        XCTAssertNotNil(data)
        let highlights = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String]
        XCTAssertNotNil(highlights)
        XCTAssertTrue(highlights.count == numberOfHighlights, "Number of channels should be 7")
    }
    
    func testHighlightsService() {
        let highlights: [String] = HighlightsService.load()
        XCTAssertNotNil(highlights)
        XCTAssertTrue(highlights.count == numberOfHighlights, "Number of channels should be 7")
    }
}
