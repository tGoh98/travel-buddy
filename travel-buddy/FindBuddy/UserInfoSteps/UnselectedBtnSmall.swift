//
//  UnselectedBtnSmall.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct UnselectedBtnSmall: View {
    var function: () -> Void
    var txt: String
    
    var body: some View {
        Button (action: {
            self.function()
        }){
            TextElem(str: txt, fontSize: 20)
                .foregroundColor(Color.init(hex: "3C3C43"))
                .opacity(0.6)
        }
        .frame(width: 120, height: 35)
        .background(Color.init(.white))
        .clipShape(RoundedCorner(radius: 35))
        .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.init(hex: "3C3C43").opacity(0.6), lineWidth: 3))
    }
}

struct UnselectedBtnSmall_Previews: PreviewProvider {
    static var previews: some View {
        UnselectedBtnSmall(function: {print("btn clicked")}, txt: "Restaurants")
    }
}
