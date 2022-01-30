//
//  SelectedBtnSmall.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct SelectedBtnSmall: View {
    var function: () -> Void
    var txt: String
    
    var body: some View {
        Button (action: {
            self.function()
        }){
            TextElem(str: txt, fontSize: 20)
                .foregroundColor(.white)
        }
        .frame(width: 120, height: 35)
        .background(Color.init(hex: "0E57BD"))
        .clipShape(RoundedCorner(radius: 35))
    }
}

struct SelectedBtnSmall_Previews: PreviewProvider {
    static var previews: some View {
        SelectedBtn(function: {print("btn clicked")}, txt: "Males")
    }
}
