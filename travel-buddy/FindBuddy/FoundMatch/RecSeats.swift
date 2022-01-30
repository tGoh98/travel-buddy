//
//  RecSeats.swift
//  travel-buddy
//
//  Created by Angela on 1/30/22.
//

import SwiftUI
import FirebaseDatabase

struct RecSeats: View {
    @EnvironmentObject var modelData: ModelData
    @State private var seats: [Seat] = []
    var body: some View {
        HStack {
            VStack {
                Spacer()
                Text("We've helped find the Top 5 Seat Choices for you").foregroundColor(Color.init(hex: "0E57BD"))
                    .font(.system(size: 24)).padding([.bottom, .top], 20)
                HStack {
                    Spacer()
                    Text("Yours").foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 18))
                    Spacer()
                    Text("Theirs").foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 18))
                    Spacer()
                }
                SeatCard(seat1: Seat(row: 21, seat: "B", type: "middle", ticketClass: "preferred", price: 12), seat2: Seat(row: 21, seat: "C", type: "aisle", ticketClass: "preferred", price: 12))
                SeatCard(seat1: Seat(row: 26, seat: "E", type: "middle", ticketClass: "preferred", price: 14), seat2: Seat(row: 26, seat: "D", type: "aisle", ticketClass: "preferred", price: 14))
                Spacer()
                Button (action: {}){
                    TextElem(str: "Continue", fontSize: 17)
                        .foregroundColor(Color.init(hex: "FFFFFF"))
                }
                .frame(width: 279, height: 46.95)
                .background(Color.init(hex: "0E57BD"))
                .clipShape(RoundedCorner(radius: 35))
                Spacer()
            }
        }
        .onAppear() {
            let url = URL(string: "http://localhost:4000/seats/rec?user1=\(modelData.username)&user2=\(modelData.matchedUsername)")
            var request = URLRequest(url: url!)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let task = URLSession.shared.dataTask(with: url!) { data, response, error in
                if let data = data {
                    print(data)
                    if let seats = try? JSONDecoder().decode([Seat].self, from: data) {
                        print(seats)
                    } else {
                        print("Invalid Response")
                    }
                } else if let error = error {
                    print("HTTP Request Failed \(error)")
                }
            }
            task.resume()
        }
    }
}

struct RecSeats_Previews: PreviewProvider {
    static var previews: some View {
        RecSeats()
    }
}
