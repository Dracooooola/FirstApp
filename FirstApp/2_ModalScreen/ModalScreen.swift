//
//  ModalScreen.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import SwiftUI

struct ModalScreen: View {

    @State var isSheetPresented: Bool = false

    var body: some View {
        Button("Open modal screen") {
            isSheetPresented.toggle()
        }
        .sheet(isPresented: $isSheetPresented) {
            SheetView(isPresented: $isSheetPresented)
        }
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
