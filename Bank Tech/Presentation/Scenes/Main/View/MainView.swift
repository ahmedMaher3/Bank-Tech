//
//  MainView.swift
//  Bank Tech
//
//  Created by ahmed maher on 14/12/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()
    @State private var isSearchBarPinned = false

    private let horizontalPadding: CGFloat = 16

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {

                        //  CarouselView
                        CarouselView(images: viewModel.carouselImages)
                            .padding(.horizontal, horizontalPadding - 8)

                        // Search Bar
                        SearchBarContainer(
                            searchText: $viewModel.searchQuery,
                            isPinned: $isSearchBarPinned,
                            horizontalPadding: horizontalPadding
                        )

                        // List Section
                        ListView(items: viewModel.listItems, horizontalPadding: horizontalPadding)
                    }
                }

                // Pinned Search Bar
                if isSearchBarPinned {
                    SearchBarContainer(
                        searchText: $viewModel.searchQuery,
                        isPinned: $isSearchBarPinned,
                        horizontalPadding: horizontalPadding
                    )
                    .zIndex(1)
                }
            }
            .navigationTitle("Carousel & List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

}

#Preview {
    MainView()
}
