//
//  SearchBarView.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import SwiftUI

struct SearchBarContainer: View {
    @Binding var searchText: String
    @Binding var isPinned: Bool

    let horizontalPadding: CGFloat

    var body: some View {
        GeometryReader { geometry in
            SearchBar(text: $searchText)
                .frame(height: 60)
                .padding(.horizontal, horizontalPadding)
                .background(.white)
                .onChange(of: geometry.frame(in: .global).minY) { oldValue, newValue  in
                  //  if searchText.isEmpty {
                        isPinned = newValue <= CalculateSafeInset.getSafeAreaTopInset()
                   // }
                }
        }
        .frame(height: 60)

    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding( 10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
        }
        .padding(.vertical)
    }
}
