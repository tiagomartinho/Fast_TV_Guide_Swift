//
//  CategoriesServiceTests.swift
//  Fast TV GuideTests
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import XCTest

@testable import Fast_TV_Guide

class CategoriesServiceTests: XCTestCase {
    let numberOfCategories = 6
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCategoriesService() {
        let categories: [String] = CategoriesService.load()
        XCTAssertNotNil(categories)
        XCTAssertTrue(categories.count == numberOfCategories, "Number of categories should = 6")
    }
}
