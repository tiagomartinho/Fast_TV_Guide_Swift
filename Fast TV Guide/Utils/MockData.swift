//
//  MockData.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

struct MockData {
    
    static func load(name: String) throws -> Data? {
        let bundle = Bundle.main
        
        if let path = bundle.path(forResource: name, ofType: "json") {
            let fileUrl = URL.init(fileURLWithPath: path)
            do {
               let data = try Data.init(contentsOf: fileUrl)
                return data
            } catch {
                let error = "File not readable" as! Error
                throw error
            }
        } else {
            let error = "File not found" as! Error
            throw error
        }
    }
}
