//
//  ListViewModel.swift
//  FirstApp
//
//  Created by Владислав Климов on 19.06.2022.
//

import Foundation

final class ListViewModel: ObservableObject {

    @Published var data: [ListItem] = [
        ListItem(text: "Car", image: "car.fill"),
        ListItem(text: "Bus", image: "bus"),
        ListItem(text: "Ferry", image: "ferry.fill"),
        ListItem(text: "Scooter", image: "scooter")
    ]

}

struct ListItem: Identifiable {
    let id: UUID = UUID()
    let text: String
    let image: String
}
