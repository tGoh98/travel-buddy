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
                        .padding(.bottom)
                    VStack (alignment: .leading) {
                        Text("Basic Info")
                            .foregroundColor(Color.init(hex: "0E57BD"))
                        HStack {
                            Image("genderIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            Text(modelData.matchedGender)
//                            Text("male")
                        }
                        HStack {
                            Image("ageIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
//                            Text("22")
                            Text(modelData.matchedAge)
                        }
                    }.padding(.bottom)
                    VStack (alignment: .leading) {
                        Text("Plans")
                            .foregroundColor(Color.init(hex: "0E57BD"))
                            .padding(.bottom, 5)
//                        Text("Hiking")
                        Text(modelData.matchedPlans)
                    }.padding(.bottom)
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
            .padding(.horizontal, 105)
            .padding(.vertical, 10)
            .background(Color.init(hex: "0E57BD"))
            .clipShape(RoundedCorner(radius: 8.0, corners: [.bottomLeft, .bottomRight]))
            .offset(y: -10)
        }
        
    }
}

struct MatchProfile_Previews: PreviewProvider {
    static var previews: some View {
        MatchProfile(internalStep: .constant(0), selectedTab: .constant(1))
            .background(Color.black)
    }
}
