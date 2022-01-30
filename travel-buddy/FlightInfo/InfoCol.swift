//
//  InfoCol.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI

struct InfoCol: View {
    var first: String
    var departed: String
    var city: String
    var scheduled: String
    var gate: String
    var term: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            VStack(alignment: .leading, spacing: 8) {
                Text(first)
                    .foregroundColor(Color.init(hex: "3C3C43"))
                    .font(.system(size: 15))
                    .opacity(0.6)
                Text(departed)
                    .font(.system(size: 24))
                Text(city)
            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Scheduled")
                    .foregroundColor(Color.init(hex: "3C3C43"))
                    .font(.system(size: 15))
                    .opacity(0.6)
                Text(scheduled)
            }
            .padding(.bottom, 20)
                        
            HStack(spacing: 35) {
                VStack(spacing: 10) {
                    Text("Gate")
                        .foregroundColor(Color.init(hex: "3C3C43"))
                        .font(.system(size: 15))
                        .opacity(0.6)
                    Text(gate)
                }
                VStack(spacing: 10) {
                    Text("Term")
                        .foregroundColor(Color.init(hex: "3C3C43"))
                        .font(.system(size: 15))
                        .opacity(0.6)
                    Text(term)
                }
            }
        }
    }
}

struct InfoCol_Previews: PreviewProvider {
    static var previews: some View {
        InfoCol(first: "Departed", departed: "7:20 AM", city: "Ft. Worth", scheduled: "7:10 AM", gate: "22", term: "C")
    }
}
