//
//  File.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import Foundation

struct FlightInfo {
    var seatPref: String // aisle, window, middle
    var priceRange: [Int]
    var blacklist: [String]
    var match: String
}
