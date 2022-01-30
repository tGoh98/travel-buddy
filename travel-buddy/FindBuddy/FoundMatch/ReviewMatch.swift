//
//  ReviewMatch.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct ReviewMatch: View {
    @Binding var internalStep: Int
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You've been matched with")
                    .font(.system(size: 27))
                    .foregroundColor(Color.init(hex: "0E57BD"))
                Button (action: {
                    internalStep = 8 // Note: 7 if needed
                }){
                    TextElem(str: "Continue", fontSize: 17)
                        .foregroundColor(.white)
                }
                .frame(width: 240, height: 43)
                .background(Color.init(hex: "0E57BD"))
                .clipShape(RoundedCorner(radius: 35))
                Spacer()
            }
            Spacer()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ReviewMatch_Previews: PreviewProvider {
    static var previews: some View {
        ReviewMatch(internalStep: .constant(6))
    }
}
