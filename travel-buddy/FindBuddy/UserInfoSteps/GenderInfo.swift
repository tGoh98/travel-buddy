//
//  GenderInfo.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct GenderInfo: View {
    @Binding var disableButton: Bool
    @Binding var selection: [Bool]
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Who are you most\ncomfortable traveling\ntogether with?")
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
                    UnselectedBtn(function: {disableButton = false; selection[0] = true}, txt: "Males")
                }
                else {
                    SelectedBtn(function: {selection[0] = false}, txt: "Males")
                }
                
                if (!selection[1]) {
                    UnselectedBtn(function: {disableButton = false; selection[1] = true}, txt: "Females")
                }
                else {
                    SelectedBtn(function: {selection[1] = false}, txt: "Females")
                }
                
                if (!selection[2]) {
                    UnselectedBtn(function: {disableButton = false; selection[2] = true}, txt: "Nonbinary")
                }
                else {
                    SelectedBtn(function: {selection[2] = false}, txt: "Nonbinary")
                }
                
                if (!selection[3]) {
                    UnselectedBtn(function: {disableButton = false; selection[3] = true}, txt: "No Preference")
                }
                else {
                    SelectedBtn(function: {selection[3] = false}, txt: "No Preference")
                }
            }
            
        }
    }
}

struct GenderInfo_Previews: PreviewProvider {
    static var previews: some View {
        GenderInfo(disableButton: .constant(true), selection: .constant([false, false, false, false]))
    }
}
