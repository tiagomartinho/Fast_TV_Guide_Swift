//
//  Service.swift
//  Fast TV Guide
//
//  Created by Ronan on 10/12/2017.
//  Copyright © 2017 Stanwood. All rights reserved.
//

import Foundation

protocol Service {
    func load<T>() -> [T]
}
