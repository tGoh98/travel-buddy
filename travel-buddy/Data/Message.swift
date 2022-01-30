//
//  Message.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import Foundation

struct Message {
    let id = UUID()
    var sent: Date
    var sender: String
    var content: String
}
