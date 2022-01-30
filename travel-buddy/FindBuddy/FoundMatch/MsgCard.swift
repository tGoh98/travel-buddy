//
//  MsgCard.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct MsgCard: View {
    var msg: String
    var isBlue: Bool // Blue = jumbo jet
    
    var body: some View {
        HStack {
            ZStack {
                if (isBlue) {
                    Circle()
                        .background(Circle()).foregroundColor(Color.init(hex: "0E57BD"))
                        .frame(width: 40, height: 40)
                } else {
                    Circle()
                        .background(Circle()).foregroundColor(Color.init(hex: "BD230E"))
                        .frame(width: 40, height: 40)
                }
                
                Image("aaLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .offset(x: 2)
            }
            VStack(alignment: .leading, spacing: 0) {
                if (isBlue) {
                    Text("Jumbo Jet")
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 15))
                } else {
                    Text("Sea Plane")
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 15))
                }
                ZStack {
                    Image("speechBubble")
                    Text(msg)
                        .font(.system(size: 18))
                        .offset(y:-3)
                }
            }
            .offset(y:-20)
        }
    }
}

struct MsgCard_Previews: PreviewProvider {
    static var previews: some View {
        MsgCard(msg: "Have you hiked b4?", isBlue: false)
    }
}
