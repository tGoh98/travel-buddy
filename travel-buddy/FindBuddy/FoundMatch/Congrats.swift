//
//  Congrats.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI
import ConfettiSwiftUI

struct Congrats: View {
    @Binding var internalStep: Int
    @State var counter: Int = 0
    let congratsTimer = Timer.publish(every: 4, on: .current, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("Congratulations!")
                        .fontWeight(.semibold)
                        .font(.system(size: 25))
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .padding(.bottom)
                    
                    Text("You're on your way to\nbeginning your new\nAmazing AAdventure")
                        .font(.system(size: 27))
                        .foregroundColor(Color.init(hex: "0E57BD"))
                    Spacer()
                }
                .offset(y:-50)
                Spacer()
            }
            
            ConfettiCannon(counter: $counter, num: 100, colors: [.red, .blue])
        }
        .onAppear() {
            counter += 1
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.white).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onReceive(congratsTimer) { _ in
            internalStep = 6
            self.congratsTimer.upstream.connect().cancel()
        }
    }
}

struct Congrats_Previews: PreviewProvider {
    static var previews: some View {
        Congrats(internalStep: .constant(0))
    }
}
