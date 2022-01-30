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
    let dbRef = Database.database().reference()
//    dbRef.child("users/\(name)/flights/flightNum/\(flightNum)/match").getData(completion:  { error, snapshot in
//      guard error == nil else {
//        print(error!.localizedDescription)
//        return;
//      }
//      let match = snapshot.value as? String ?? "Unknown";
//    });
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                var name = modelData.name
                var flightNum: modelData.flightNum
                seats = 
                ForEach(seats) { pair in
                    SeatCard(seat1: pair[0], seat2:pair[1])
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct RecSeats_Previews: PreviewProvider {
    static var previews: some View {
        RecSeats(name:"Yister", flightNum:"7079")
    }
}
