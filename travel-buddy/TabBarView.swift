//
//  TabBarView.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Int
    @State private var img1: String = "homeIconSelected"
    @State private var img2: String = "planeIcon"
    @State private var img3: String = "userIcon"
    
    var body: some View {
        HStack {
            Spacer()
            Button (action: {
                selectedTab = 1
                img1 = "homeIconSelected"
                img2 = "planeIcon"
                img3 = "userIcon"
            }){
                Image(img1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            }
            Spacer()
            Button (action: {
                selectedTab = 2
                img1 = "homeIcon"
                img2 = "planeIconSelected"
                img3 = "userIcon"
            }){
                Image(img2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            }
            Spacer()
            Button (action: {
                selectedTab = 3
                img1 = "homeIcon"
                img2 = "planeIcon"
                img3 = "userIconSelected"
            }){
                Image(img3)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            }
            Spacer()
        }
        .padding(.vertical, 10)
        .background(Color.init(.white)).clipShape(RoundedCorner(radius: 8.0, corners: [.topLeft, .topRight]))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(1))
    }
}
