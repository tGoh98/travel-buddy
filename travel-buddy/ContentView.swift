//
//  ContentView.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selectedTab: Int = 1
    @State private var buddyStep: Int = 0
    
    var body: some View {
        VStack {
            if (selectedTab != 5) {
                Spacer()
            }
            if (selectedTab == 1) {
                // Flight info
                FlightInfoView()
            } else if (selectedTab == 2) {
                // Find buddy
                FindBuddyView(buddyStep: $buddyStep, selectedTab: $selectedTab)
                    .environmentObject(modelData)
            } else if (selectedTab == 3) {
                // Profile
                ProfileView()
            } else if (selectedTab == 4) {
                // Match found dialog
                MatchFound(selectedTab: $selectedTab, buddyStep: $buddyStep)
            } else if (selectedTab == 5) {
                Chatroom(selectedTab: $selectedTab)
                    .environmentObject(modelData)
            } else {
                Text("Error!")
            }
            if (selectedTab != 5) {
                Spacer()
                TabBarView(selectedTab: $selectedTab)
                    .environmentObject(modelData)
            }
        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
