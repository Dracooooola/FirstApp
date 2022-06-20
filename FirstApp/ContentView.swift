//
//  ContentView.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import SwiftUI

struct ContentView: View {

    @State var tabSelection: Int = 0
    @State var isNeedOpenLink: Bool = false

    var body: some View {
        TabView(selection: $tabSelection) {
            ButtonScreen(selectedTab: $tabSelection, isNeedOpenLink: $isNeedOpenLink)
                .tag(0)
                .tabItem {
                    Label("Button", systemImage: "house.circle.fill")
                }

            ListScreen(isNeedOpenLink: $isNeedOpenLink)
                .tag(1)
                .tabItem {
                    Label("List", systemImage: "list.bullet.circle.fill")
                }

            ModalScreen()
                .tag(2)
                .tabItem {
                    Label("Modal", systemImage: "m.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
