//
//  Splash.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//


import SwiftUI

struct Splash: View {
    var body: some View {
        VStack {
            HStack {
                Text("Find your\nFlight Buddy\nwith American")
                    .foregroundColor(Color.init(hex:"0E57BD"))
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                VStack {
                    Image("aaLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.top, 60)
                }
            }
            .padding(.top, 100)
            Gif(fileName: "splash")
                .padding(.top, 50)
                .padding(.bottom, 200)
        }
        .background(Color.init(hex: "CDE9F5"))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
