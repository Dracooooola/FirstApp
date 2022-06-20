//
//  UIKitLabel.swift
//  FirstApp
//
//  Created by Владислав Климов on 20.06.2022.
//

import SwiftUI

struct UIKitLabel: UIViewRepresentable {

    func makeUIView(context: Context) -> UILabel {
        return UILabel()
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = "Example with UIKit"
        uiView.textAlignment = .center
    }

}

struct UIKitLabel_Previews: PreviewProvider {
    static var previews: some View {
        UIKitLabel()
    }
}
