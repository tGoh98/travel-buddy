//
//  MatchFound.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct MatchFound: View {
    @Binding var selectedTab: Int
    @Binding var buddyStep: Int
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 0) {
                VStack {
                    Text("Match Found!")
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                        .padding()
                    Button (action: {
                        selectedTab = 2
                        buddyStep = 2
                    }){
                        TextElem(str: "Let's Go", fontSize: 17)
                            .foregroundColor(.white)
                    }
                    .frame(width: 240, height: 43)
                    .background(Color.init(hex: "0E57BD"))
                    .clipShape(RoundedCorner(radius: 35))
                    .padding()
                    
                }.padding()
                .background(Color.white).clipShape(RoundedCorner(radius: 8.0))
                .padding(.horizontal, 25)
            }
            .shadow(radius: 4)
            Spacer()
        }
//        .frame(
//            minWidth: 0,
//            maxWidth: .infinity,
//            minHeight: 0,
//            maxHeight: .infinity,
//            alignment: .topLeading
//        )
//        .background(Color.black.opacity(0.3)).ignoresSafeArea()
        
    }
}

struct MatchFound_Previews: PreviewProvider {
    static var previews: some View {
        MatchFound(selectedTab: .constant(1), buddyStep: .constant(1))
    }
}
