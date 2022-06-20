//
//  ListItemScreen.swift
//  FirstApp
//
//  Created by Владислав Климов on 20.06.2022.
//

import SwiftUI

struct ListItemScreen: View {

    let text: String
    let imageName: String

    var body: some View {
        Label(text, systemImage: imageName)
    }
}

struct ListItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListItemScreen(text: "Car", imageName: "car.fill")
    }
}
