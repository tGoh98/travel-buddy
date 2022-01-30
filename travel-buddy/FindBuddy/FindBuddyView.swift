//
//  FindBuddy.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct FindBuddyView: View {
    @State private var step: Int = 0
    
    var body: some View {
        if (step == 0) {
            FBIntro(step: $step)
        } else if (step == 1) {
            UserInfo(step: $step)
        }
        else {
            Text("Unrecognized step")
        }
    }
}

struct FindBuddy_Previews: PreviewProvider {
    static var previews: some View {
        FindBuddyView()
    }
}
