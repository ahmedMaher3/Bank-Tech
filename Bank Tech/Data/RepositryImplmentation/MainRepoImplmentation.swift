//
//  MainRepoImplmentation.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//


import Foundation
class MainRepoImplmentation: MainRepository {
    private let dataProvider: DataProvider

    init(dataProvider: DataProvider = DataProviderImplmentation()) {
        self.dataProvider = dataProvider
    }

    func getCarouselImages() -> [String] {
        return dataProvider.fetchCarouselImages()
    }

    func getListItems() -> [ListDTO] {
        return dataProvider.fetchListItems()
    }
}
