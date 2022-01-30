//
//  FindBuddy.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct FindBuddyView: View {
    @Binding var buddyStep: Int
    
    var body: some View {
        if (buddyStep == 0) {
            FBIntro(step: $buddyStep)
        } else if (buddyStep == 1) {
            UserInfo(step: $buddyStep)
        } else if (buddyStep == 2) {
            Text("Match found")
        }
        else {
            Text("Unrecognized step")
        }
    }
}

struct FindBuddy_Previews: PreviewProvider {
    static var previews: some View {
        FindBuddyView(buddyStep: .constant(0))
    }
}
