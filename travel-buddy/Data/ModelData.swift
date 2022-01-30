//
//  ModelData.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import Foundation
import SwiftUI

final class ModelData: ObservableObject {
    
    var name: String = "tim zhou"
    var username: String = "alphabear"
    @Published var showChatroom: Bool = false
    @Published var matched: Bool = false
    @Published var matchedName: String = "asdf"
    @Published var matchedUsername: String = "asdf"
    @Published var matchedGender: String = "male"
    @Published var matchedPlans: String = "hiking"
    @Published var matchedAge: String = "22"
   
}
