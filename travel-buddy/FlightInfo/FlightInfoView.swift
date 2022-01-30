//
//  FlightInfo.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct FlightInfoView: View {
    var body: some View {
        VStack(spacing: 0) {
            TextElem(str: "Your Flight Status", fontSize: 35)
                .foregroundColor(.white)
                .padding(.top, 40)
                .padding(.bottom, 10)
            TextElem(str: "DFW --> SFO", fontSize: 25)
                .foregroundColor(.white)
                .padding(.bottom)
            TextElem(str: "SUNDAY, JANUARY 30, 2022", fontSize: 15)
                .foregroundColor(.white)
                .padding(.bottom)
            
            VStack {
                HStack {
                    Text("Flight 3647")
                        .foregroundColor(Color.init(hex: "0E57BD"))
                    Spacer()
                }
                Divider()
                
                HStack {
                    InfoCol(first: "Departed", departed: "7:20 AM", city: "Ft. Worth", scheduled: "7:10 AM", gate: "22", term: "C")
                    Spacer()
                    Divider()
                    InfoCol(first: "Arrived", departed: "9:32 AM", city: "San Francisco", scheduled: "9:21 AM", gate: "15", term: "B")
                        .offset(x: 20)
                    Spacer()
                }
                .padding(.horizontal)
            }.padding()
            .background(Color.white).clipShape(RoundedCorner(radius: 8.0))
            .padding(.horizontal, 25)
            Spacer()
        }
        .shadow(radius: 4)
    }
}

struct FlightInfo_Previews: PreviewProvider {
    static var previews: some View {
        FlightInfoView()
    }
}
