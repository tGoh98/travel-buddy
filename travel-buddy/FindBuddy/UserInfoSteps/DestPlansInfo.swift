//
//  DestPlansInfo.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct DestPlansInfo: View {
    @Binding var disableButton: Bool
    @Binding var selection: [Bool]
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("What are your\ndestination plans?")
                    .foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 25))
                    .padding(.bottom, 1)
                Text("Please select all that apply.")
                    .foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 10))
            }
            .padding(.bottom, 10)
            HStack {
                VStack(spacing: 10) {
                    if (!selection[0]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[0] = true}, txt: "Hiking")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[0] = false}, txt: "Hiking")
                    }
                    
                    if (!selection[1]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[1] = true}, txt: "Outdoors")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[1] = false}, txt: "Outdoors")
                    }
                    
                    if (!selection[2]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[2] = true}, txt: "Camping")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[2] = false}, txt: "Camping")
                    }
                    
                    if (!selection[3]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[3] = true}, txt: "Culture")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[3] = false}, txt: "Culture")
                    }
                    if (!selection[4]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[4] = true}, txt: "Explore")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[4] = false}, txt: "Explore")
                    }
                    
                    if (!selection[5]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[5] = true}, txt: "Nightlife")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[5] = false}, txt: "Nightlife")
                    }
                }
                VStack(spacing: 10) {
                    if (!selection[6]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[6] = true}, txt: "Museums")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[6] = false}, txt: "Museums")
                    }
                    
                    if (!selection[7]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[7] = true}, txt: "Art Shows")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[7] = false}, txt: "Art Shows")
                    }
                    
                    if (!selection[8]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[8] = true}, txt: "Sights")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[8] = false}, txt: "Sights")
                    }
                    
                    if (!selection[9]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[9] = true}, txt: "Touring")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[9] = false}, txt: "Touring")
                    }
                    if (!selection[10]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[10] = true}, txt: "Shopping")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[10] = false}, txt: "Shopping")
                    }
                    
                    if (!selection[11]) {
                        UnselectedBtnSmall(function: {disableButton = false; selection[11] = true}, txt: "Restaurants")
                    }
                    else {
                        SelectedBtnSmall(function: {selection[11] = false}, txt: "Restaurants")
                    }
                }
            }
            
        }
    }
}

struct DestPlansInfo_Previews: PreviewProvider {
    static var previews: some View {
        DestPlansInfo(disableButton: .constant(true), selection: .constant([false, false, false, false, false, false, false, false, false, false, false, false]))
    }
}
