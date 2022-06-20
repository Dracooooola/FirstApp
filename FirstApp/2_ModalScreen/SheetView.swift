//
//  SheetView.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import SwiftUI

struct SheetView: View {

    @Binding var isPresented: Bool

    var body: some View {
        Button(action: {
            self.isPresented = false
        }, label: {
            Image(systemName: "signature")
                .resizable()
                .frame(width: 200, height: 150)
        })
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isPresented: .constant(true))
    }
}
