//
//  AgeInfo.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct AgeInfo: View {
    @Binding var disableButton: Bool
    @Binding var selection: [Bool]
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Which age group\nwould you prefer to\ntravel with?")
                    .foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 25))
                    .padding(.bottom, 1)
                Text("Please select all that apply.")
                    .foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 10))
            }
            .padding(.bottom, 10)
            VStack(spacing: 10) {
                if (!selection[0]) {
                    UnselectedBtn(function: {disableButton = false; selection[0] = true}, txt: "18-22")
                }
                else {
                    SelectedBtn(function: {selection[0] = false}, txt: "18-22")
                }
                
                if (!selection[1]) {
                    UnselectedBtn(function: {disableButton = false; selection[1] = true}, txt: "22-30")
                }
                else {
                    SelectedBtn(function: {selection[1] = false}, txt: "22-30")
                }
                
                if (!selection[2]) {
                    UnselectedBtn(function: {disableButton = false; selection[2] = true}, txt: "30-45")
                }
                else {
                    SelectedBtn(function: {selection[2] = false}, txt: "30-45")
                }
                
                if (!selection[3]) {
                    UnselectedBtn(function: {disableButton = false; selection[3] = true}, txt: "46+")
                }
                else {
                    SelectedBtn(function: {selection[3] = false}, txt: "46+")
                }
            }
            
        }
    }
}

struct AgeInfo_Previews: PreviewProvider {
    static var previews: some View {
        AgeInfo(disableButton: .constant(true), selection: .constant([false, false, false, false]))
    }
}
