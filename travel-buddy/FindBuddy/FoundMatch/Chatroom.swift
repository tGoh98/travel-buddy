//
//  Chatroom.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct Chatroom: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Text("Chatroom")
            Text("Chatroom")
            Text("Chatroom")
            Text("Chatroom")
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
