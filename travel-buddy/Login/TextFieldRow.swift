//
//  TextField.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct TextFieldRow: View {
    @Binding var val: String
    var hint: String
    var isPassword: Bool
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading, content: {
                Text(hint)
                    .foregroundColor(Color.init(hex:"3C3C43"))
                    .opacity(0.6)
                    .font(.system(size: 12))
                    .offset(y: -20)
                if (isPassword) {
                    SecureField("", text: $val).foregroundColor(Color.init(hex:"3C3C43"))
                } else {
                    TextField("", text: $val).foregroundColor(Color.init(hex:"3C3C43"))
                }
            })
            Divider()
        }.padding(.bottom, 20)
    }
}

struct TextFieldRow_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldRow(val: .constant("asdf"), hint: "Last name", isPassword: false)
    }
}
