//
//  FBIntro.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct FBIntro: View {
    @Binding var step: Int
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading) {
                TextElem(str: "Find Your", fontSize: 30)
                Text("Flight Buddy")
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                    
            }
            .foregroundColor(.white)
            
            Spacer()
            
            Button (action: {
                step += 1
            }){
                TextElem(str: "Begin", fontSize: 30)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 75)
            .padding(.vertical, 10)
            .background(Color.init(.white).opacity(0.3))
            .clipShape(RoundedCorner(radius: 35))
            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.white, lineWidth: 3))
            
            
            Spacer()
            Spacer()
        }
    }
}

struct FBIntro_Previews: PreviewProvider {
    static var previews: some View {
        FBIntro(step: .constant(0)).background(Color.blue)
    }
}
