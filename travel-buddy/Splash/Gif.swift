//
//  Gif.swift
//  travel-buddy
//
//  Created by Timothy Goh on 1/29/22.
//

import Foundation
import SwiftUI
import FLAnimatedImage

struct Gif: UIViewRepresentable {
    let animatedView = FLAnimatedImageView()
    var fileName: String
    func makeUIView(context: UIViewRepresentableContext<Gif>) -> UIView {
        let view = UIView()

        let path : String = Bundle.main.path(forResource: fileName, ofType: "gif")!
        let url = URL(fileURLWithPath: path)
        let gifData = try! Data(contentsOf: url)

        let gif = FLAnimatedImage(animatedGIFData: gifData)
        animatedView.animatedImage = gif

        animatedView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animatedView)

        NSLayoutConstraint.activate([
            animatedView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animatedView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Gif>) {

    }
}

