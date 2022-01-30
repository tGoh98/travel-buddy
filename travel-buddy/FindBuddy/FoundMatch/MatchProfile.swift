//
//  MatchProfile.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct MatchProfile: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var internalStep: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                VStack {
                    Text("Profile Overview")
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                    // TODO: profile stuff here
                }
                .padding()
            }
            .padding()
            .background(Color.white.opacity(0.8)).clipShape(RoundedCorner(radius: 8.0, corners: [.topLeft, .topRight]))
            .padding(.horizontal, 25)
            
            // Next button
            Button(action: {
                internalStep += 1
                selectedTab = 5
                modelData.showChatroom = true
            }) {
                TextElem(str: "Next")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            .padding(.horizontal, 135)
            .padding(.vertical, 10)
            .background(Color.init(hex: "0E57BD"))
            .clipShape(RoundedCorner(radius: 8.0, corners: [.bottomLeft, .bottomRight]))
        }
        
    }
}

struct MatchProfile_Previews: PreviewProvider {
    static var previews: some View {
        MatchProfile(internalStep: .constant(0), selectedTab: .constant(1))
    }
}
