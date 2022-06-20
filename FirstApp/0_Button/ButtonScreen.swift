//
//  ButtonScreen.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import SwiftUI

struct ButtonScreen: View {

    @Binding var selectedTab: Int
    @Binding var isNeedOpenLink: Bool

    var body: some View {
        VStack {
            Button("Open second tap and first item") {
                selectedTab = 1
                isNeedOpenLink = true
            }
            UIKitLabel()
                .frame(height: 20)
        }
    }

}

struct ButtonScreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonScreen(selectedTab: .constant(0), isNeedOpenLink: .constant(false))
    }
}
