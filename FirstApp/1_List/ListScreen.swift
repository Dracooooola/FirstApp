//
//  ListScreen.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import SwiftUI

struct ListScreen: View {

    @ObservedObject var viewModel: ListViewModel = .init()
    @Binding var isNeedOpenLink: Bool
    @State var selection: String? = nil

    var body: some View {
        NavigationView {
            List(viewModel.data) { item in
                NavigationLink(destination: ListItemScreen(text: item.text, imageName: item.image),
                               tag: item.text,
                               selection: $selection) {
                    HStack {
                        Image(systemName: item.image)
                        Text(item.text)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                if isNeedOpenLink {
                    selection = viewModel.data.first?.text
                    isNeedOpenLink = false
                }
            }
        }
    }

}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen(isNeedOpenLink: .constant(false))
    }
}
