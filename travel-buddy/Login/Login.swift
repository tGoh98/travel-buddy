//
//  Login.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var step: Int
    @State var lastName: String = ""
    @State var username: String = ""
    @State var flightNum: String = ""
    @State var password: String = ""
    @State var rememberMe: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            TextElem(str: "Flight Buddy", fontSize: 40)
                .foregroundColor(.white)
                .padding(.vertical, 40)
            VStack {
                // Fields
                TextFieldRow(val: $lastName, hint: "Last name", isPassword: false)
                    .padding(.top, 20)
                TextFieldRow(val: $username, hint: "Username", isPassword: false)
                TextFieldRow(val: $flightNum, hint: "Flight ##", isPassword: false)
                TextFieldRow(val: $password, hint: "Password", isPassword: true)
                Toggle(isOn: $rememberMe) {
                    TextElem(str: "Keep me logged in", fontSize: 14)
                        .foregroundColor(Color.init(hex:"3C3C43"))
                        .opacity(0.6)
                }.toggleStyle(SwitchToggleStyle(tint: Color.init(hex: "0E57BD")))
            }.padding()
            .background(Color.white).clipShape(RoundedCorner(radius: 8.0, corners: [.topLeft, .topRight]))
            .padding(.horizontal, 25)
            
            // Login button
            Button(action: {
                modelData.name = lastName
                modelData.username = username
                self.step += 1
            }) {
                TextElem(str: "Log in")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            .padding(.horizontal, 135)
            .padding(.vertical, 10)
            .background(Color.init(hex: "0E57BD"))
            .clipShape(RoundedCorner(radius: 8.0, corners: [.bottomLeft, .bottomRight]))
            
            HStack {
                Spacer()
                TextElem(str: "Forgot your password?", fontSize: 12)
                    .foregroundColor(.white)
                    .offset(x: -10)
                    .padding()
            }
            Spacer()
        }
        .shadow(radius: 4)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(step: .constant(1))
    }
}
