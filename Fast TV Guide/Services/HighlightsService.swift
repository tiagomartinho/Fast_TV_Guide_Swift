//
//  HighlightsService.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

struct HighlightsService: Service {
    static func load<String>() -> [String] {
        let data = try! MockData.load(name: "Highlights")
        let highlights = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String]
        return highlights
    }
}
