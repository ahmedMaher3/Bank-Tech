//
//  DataProvider.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import Foundation

protocol DataProvider {
    func fetchCarouselImages() -> [String]
    func fetchListItems() -> [ListDTO]
}

class DataProviderImplmentation: DataProvider {
    func fetchCarouselImages() -> [String] {
        return ["1", "2", "3"]
    }

    func fetchListItems() -> [ListDTO] {
        return [
            ListDTO(title: "Item 1", imageName: "1"),
            ListDTO(title: "Item 2", imageName: "2"),
            ListDTO(title: "Item 3", imageName: "3"),
            ListDTO(title: "Item 4", imageName: "1"),
            ListDTO(title: "Item 5", imageName: "2"),
            ListDTO(title: "Item 6", imageName: "3"),
            ListDTO(title: "Item 7", imageName: "1"),
            ListDTO(title: "Item 8", imageName: "2"),
            ListDTO(title: "Item 9", imageName: "3"),
            ListDTO(title: "Item 10", imageName: "1"),
            ListDTO(title: "Item 11", imageName: "2"),
            ListDTO(title: "Item 12", imageName: "3"),
        ]
    }
}
