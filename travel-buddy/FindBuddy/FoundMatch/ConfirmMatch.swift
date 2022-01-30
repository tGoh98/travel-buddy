//
//  ConfirmMatch.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct ConfirmMatch: View {
    @Binding var internalStep: Int
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Spacer()
                        Button (action: {
                            internalStep = 0
                        }){
                            Image("closeBtn")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                    }
                    Group {
                        Text("Confirm Match")
                            .foregroundColor(Color.init(hex: "0E57BD"))
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                            .padding()
                        Button (action: {
                            internalStep = 5 // Note: 3 if needed
                        }){
                            TextElem(str: "Yes, let's buddy up!", fontSize: 17)
                                .foregroundColor(.white)
                        }
                        .frame(width: 240, height: 43)
                        .background(Color.init(hex: "0E57BD"))
                        .clipShape(RoundedCorner(radius: 35))
                        
                        Button (action: {
                            internalStep = 4
                        }){
                            TextElem(str: "No, not for me", fontSize: 17)
                                .foregroundColor(.white)
                        }
                        .frame(width: 240, height: 43)
                        .background(Color.init(hex: "DADADA"))
                        .clipShape(RoundedCorner(radius: 35))
                        .padding(.top)
                    }
                    .offset(y:-20)
                    
                }.padding()
                .background(Color.white).clipShape(RoundedCorner(radius: 8.0))
                .padding(.horizontal, 25)
            }
            .shadow(radius: 4)
            Spacer()
        }
    }
}

struct ConfirmMatch_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmMatch(internalStep: .constant(2))
    }
}
