//
//  ChatroomHeader.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct ChatroomHeader: View {
    @Binding var selectedTab: Int
    @Binding var internalStep: Int
    @State private var title: String = "Chatroom"
    
    var body: some View {
        VStack {
            HStack {
                // Back button
                Button(action: {
                    if (internalStep == 0) {
                        selectedTab = 1
                        title = "Basic Profile"
                    } else {
                        internalStep = 0
                        title = "Chatroom"
                    }
                }){
                    Image("backArrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                }
                .padding()
                Spacer()
                
                // Title
                Text(title)
                    .foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 25))
                Spacer()
                
                // Airplane button
                Button(action: {
                    internalStep = 2
                }){
                    if (internalStep != 1) {
                        Image("profileBtn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                    }
                }
                .padding()
                
            }.padding(.top, 25)
        }
        .background(Color.white)
        .shadow(radius: 4)
    }
}

struct ChatroomHeader_Previews: PreviewProvider {
    static var previews: some View {
        ChatroomHeader(selectedTab: .constant(2), internalStep: .constant(0))
    }
}
