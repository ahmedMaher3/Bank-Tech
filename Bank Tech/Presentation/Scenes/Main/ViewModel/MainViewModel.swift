//
//  MainViewModel.swift
//  Bank Tech
//
//  Created by ahmed maher on 14/12/2024.
//

import Foundation
import SwiftUI
//import Combine

class MainViewModel: ObservableObject {
    @Published var carouselImages: [String] = []
    @Published var listItems: [ListDTO] = []
    @Published var searchQuery: String = "" {
        didSet {
            filterList()
        }
    }

    private let repository: MainRepository

    init(repository: MainRepository = MainRepoImplmentation()) {
        self.repository = repository
        fetchData()
    }

    private func fetchData() {
        carouselImages = repository.getCarouselImages()
        listItems = repository.getListItems()
    }


    private func filterList() {
        listItems =  searchQuery.isEmpty ? repository.getListItems() : listItems.filter { $0.title.lowercased().contains(searchQuery.lowercased()) }
    }
}
