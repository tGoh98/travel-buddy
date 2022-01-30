//
//  UserInfo.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import SwiftUI

struct UserInfo: View {
    @Binding var step: Int
    @State private var internalStep: Int = 0
    @State private var disableButton: Bool = true
    @State private var percentageDone: CGFloat = 0.0
    @State private var genderPrefs: [Bool] = [false, false, false, false]
    @State private var agePrefs: [Bool] = [false, false, false, false]
    @State private var destPrefs: [Bool] = [false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var topText: String = "Let's Start..."
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 7) {
                    Text(topText)
                        .foregroundColor(Color.init(hex: "0E57BD"))
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                    
                    ZStack {
                        MyLinesStatic(startX: 5, startY: 10, endX: 275, strokeColor: Color.init(hex: "DADADA"))
                        MyLines(startX: 5, startY: 10, endX: 275, strokeColor: Color.init(hex: "0E57BD"), percentageFinal: percentageDone)
                        
                        if (internalStep == 0) {
                            GenderInfo(disableButton: $disableButton, selection: $genderPrefs)
                        } else if (internalStep == 1) {
                            AgeInfo(disableButton: $disableButton, selection: $agePrefs)
                        } else if (internalStep == 2) {
                            DestPlansInfo(disableButton: $disableButton, selection: $destPrefs)
                        } else if (internalStep == 3) {
                            Text("Just a moment while we find your match...")
                                .foregroundColor(Color.init(hex: "0E57BD"))
                                .font(.system(size: 25))
                        } else {
                            Text("Unrecognized internal step")
                        }
                    }
                }
                .padding()
            }
            .padding()
            .background(Color.white).clipShape(RoundedCorner(radius: 8.0, corners: [.topLeft, .topRight]))
            .padding(.horizontal, 25)
            
            if (disableButton) {
                Button(action: {
                    // Do nothing
                }) {
                    TextElem(str: "Next")
                        .foregroundColor(.white)
                        .font(.title3)
                }
                .padding(.horizontal, 142)
                .padding(.vertical, 10)
                .background(Color.init(hex: "DADADA"))
                .clipShape(RoundedCorner(radius: 8.0, corners: [.bottomLeft, .bottomRight]))
                .offset(y:-8)
            } else {
                Button(action: {
                    internalStep += 1
                    percentageDone += 0.3334
                    disableButton = true
                    if (internalStep == 1) {
                        topText = "Almost There..."
                    } else if (internalStep == 2) {
                        topText = "So Close..."
                    } else {
                        topText = "Great, you're done!"
                    }
                }) {
                    TextElem(str: "Next")
                        .foregroundColor(.white)
                        .font(.title3)
                }
                .padding(.horizontal, 142)
                .padding(.vertical, 10)
                .background(Color.init(hex: "0E57BD"))
                .clipShape(RoundedCorner(radius: 8.0, corners: [.bottomLeft, .bottomRight]))
                .offset(y:-8)
            }
        }
        .shadow(radius: 4)
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo(step: .constant(1))
    }
}


struct MyLines: View {
    var startX: CGFloat
    var startY: CGFloat
    var endX: CGFloat
    var strokeColor: Color
    var percentageFinal: CGFloat
    
    var body: some View {
        
        var percentage = percentageFinal
        
        Path { path in
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: endX, y: startY))
        }
        .trim(from: 0, to: percentage) // << breaks path by parts, animatable
        .stroke(strokeColor, style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round))
        .animation(.easeOut(duration: 1.0)) // << animate
        .onAppear {
            percentage = 1.0 // << activates animation for 0 to the end
        }
    }
}

struct MyLinesStatic: View {
    var startX: CGFloat
    var startY: CGFloat
    var endX: CGFloat
    var strokeColor: Color
    
    @State private var percentage: CGFloat = .zero
    
    var body: some View {
        
        Path { path in
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: endX, y: startY))
        }
        .trim(from: 0, to: percentage) // << breaks path by parts, animatable
        .stroke(strokeColor, style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round))
        .onAppear {
            self.percentage = 1.0 // << activates animation for 0 to the end
        }
    }
}



