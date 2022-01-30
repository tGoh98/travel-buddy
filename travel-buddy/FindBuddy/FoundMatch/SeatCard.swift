//
//  SeatCard.swift
//  travel-buddy
//
//  Created by Angela on 1/30/22.
//

import SwiftUI

struct SeatCard: View {
var seat1: Seat
var seat2: Seat
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            VStack {
                Button (action: {}){
                    TextElem(str: "\(seat1.row) \(seat1.seat)", fontSize: 17)
                        .foregroundColor(.white)
                }
                .frame(width: 63, height: 36)
                .background(Color.init(hex: "0E57BD"))
                .clipShape(RoundedCorner(radius: 35))
                Text("$\(seat1.price)").foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 14))
            }
            Spacer()
            Button (action: {}){
                TextElem(str: "\(seat2.row) \(seat2.seat)", fontSize: 17)
                    .foregroundColor(Color.init(hex: "0E57BD"))
            }
            .frame(width: 63, height: 36)
            .background(Color.init(hex: "FFFFFF"))
            .clipShape(RoundedCorner(radius: 35))
            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.init(hex: "0E57BD"), lineWidth: 1))
            Spacer()
        }
    }
}

struct SeatCard_Previews: PreviewProvider {
    static var previews: some View {
        SeatCard(seat1: Seat(row: 21, seat: "B", type: "middle", ticketClass: "preferred", price: 12), seat2: Seat(row: 21, seat: "C", type: "aisle", ticketClass: "preferred", price: 12))
    }
}
