//
//  TextElem.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct TextElem: View {
    var str: String
    var fontSize: CGFloat = 20
    
    var body: some View {
        Text(str)
            .font(Font.custom("acari-sans", size: fontSize))
    }
}

struct TextElem_Previews: PreviewProvider {
    static var previews: some View {
        TextElem(str: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
