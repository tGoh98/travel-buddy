//
//  travel_buddyApp.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI
import Firebase

@main
struct travel_buddyApp: App {
    @StateObject private var modelData = ModelData()
    
    @State var step: Int = 2 // TODO: RESET THIS TO 0
    let splashTimer = Timer.publish(every: 3, on: .current, in: .common).autoconnect()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if (step == 0) {
                Splash()
            } else {
                Group {
                    if (step == 1) {
                        Login(step: $step).environmentObject(modelData)
                    } else {
                        ContentView().environmentObject(modelData)
                    }
                }.background(
                    Image("background1")
                        .resizable()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .colorMultiply(Color.init(hex: "d3d3d3"))
                        .saturation(0.5)
                )
            }
            
            Text("")
                .frame(maxWidth: 0, maxHeight:0)
                .onReceive(splashTimer) { _ in
                    if (self.step == 0) {
                        self.step += 1
                    } else if (self.step >= 1) {
                        self.splashTimer.upstream.connect().cancel()
                    }
                }
        }
    }
}
