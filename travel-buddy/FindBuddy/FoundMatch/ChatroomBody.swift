//
//  ChatroomBody.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/30/22.
//

import SwiftUI
import FirebaseDatabase

struct ChatroomBody: View {
    @EnvironmentObject var modelData: ModelData
    @State private var msg: String = ""
    @State private var messages: [Message] = []
    let dbRef = Database.database().reference()
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                
                // Iterate over messages and generate views
                ForEach(messages, id: \.id) { msg in
                    MsgCard(msg: msg.content, isBlue: modelData.name == msg.sender)
                }
                
                Spacer()
                
                // Footer
                HStack {
                    HStack {
                        TextField("Aa", text: $msg)
                    }
                    .padding()
                    .background(Color.init(hex: "000000").opacity(0.05))
                    .clipShape(RoundedCorner(radius: 35))
                    
                    // Send button
                    Button(action: {
                        // Create new msg
                        let newMsg: Message = Message(sent: Date(), sender: modelData.name, content: msg)
                        messages.append(newMsg)
                        
                        var arr : [NSArray] = []
                        for msg in messages {
                            arr.append(NSArray(array: ["msg.sent", msg.sender, msg.content]))
                        }
                        
                        // Write to firebase
                        dbRef.child("chats").child(getKey()).setValue(arr as NSArray)
                        
                        msg = ""
                    }){
                        Image("sendBtn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                }
                .padding()
                
            }
            Spacer()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.white)
        .onAppear() {
            // Initial read from firebase
            dbRef.child("chats/\(getKey())").observe(DataEventType.value, with: { snapshot in
                let NSMessages = snapshot.value as? NSArray ?? []
                var updatedArr: [Message] = []
                for NSMsg in NSMessages {
                    let converted: NSArray = NSMsg as? NSArray ?? []
                    let sender: String = converted[1] as? String ?? ""
                    let content: String = converted[2] as? String ?? ""
                    updatedArr.append(Message(sent: Date(), sender: sender, content: content))
                }
                messages = updatedArr
            })
        }
    }
    
    func getKey() -> String {
        var names:[String] = [modelData.name, modelData.matchedName]
        names.sort()
        return names.joined()
    }
}

struct ChatroomBody_Previews: PreviewProvider {
    static var previews: some View {
        ChatroomBody()
            .environmentObject(ModelData())
    }
}
