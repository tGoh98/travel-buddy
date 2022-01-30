//
//  Chatroom.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct Chatroom: View {
    @Binding var selectedTab: Int
    @State private var internalStep: Int = 0 // 0 body, 1 profile, 2 confirm, 3 yes buddy, 4 no not for me, 5 congrats, 6 review, 7 avail seats, 8 recSeats (then bring back to 0)
    
    var body: some View {
        VStack {
            if (internalStep != 5 && internalStep != 6 && internalStep != 7 && internalStep != 8) {
                ChatroomHeader(selectedTab: $selectedTab, internalStep: $internalStep)
            }
            
            if (internalStep == 0) {
                // show chatroom
                ChatroomBody()
            } else if (internalStep == 1) {
                // show match's profile
                MatchBasicProfile()
            } else if (internalStep == 2) {
                // confirm match modal
                ConfirmMatch(internalStep: $internalStep)
            } else if (internalStep == 3) {
            } else if (internalStep == 4) {
            } else if (internalStep == 5) {
                Congrats(internalStep: $internalStep)
            } else if (internalStep == 6) {
                ReviewMatch(internalStep: $internalStep)
            } else if (internalStep == 7) {
            } else if (internalStep == 8) {
            } else {
                Text("Unrecognized step")
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.black.opacity(0.3)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Chatroom_Previews: PreviewProvider {
    static var previews: some View {
        Chatroom(selectedTab: .constant(1))
    }
}
