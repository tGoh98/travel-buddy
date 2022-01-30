//
//  User.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var gender: [String] // male, female, nonbinary, transgender, intersex, other, preferNotToSay
    var interests: [String]
    var questions: [String]
    var Flights: [FlightInfo]
}
