//
//  MatchDriver.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct MatchDriver: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var selectedTab: Int
    @State private var internalStep: Int = 0
    
    var body: some View {
        VStack {
            if (internalStep == 0) {
                MatchProfile(internalStep: $internalStep, selectedTab: $selectedTab)
                    .environmentObject(modelData)
            } else if (internalStep == 1) {
                // is chatroom
            } else {
                Text("Unrecognized internal step")
            }
        }
    }
}

struct MatchDriver_Previews: PreviewProvider {
    static var previews: some View {
        MatchDriver(selectedTab: .constant(1))
    }
}
