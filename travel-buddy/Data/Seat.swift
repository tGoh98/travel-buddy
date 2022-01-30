//
//  Seat.swift
//  travel-buddy
//
//  Created by Angela on 1/30/22.
//

import Foundation

struct Seat: Decodable  {
    var row: Int
    var seat: String
    var type: String
    var ticketClass: String
    var price: Int
}
