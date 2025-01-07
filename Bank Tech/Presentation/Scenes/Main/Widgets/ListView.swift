//
//  ListView.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import SwiftUI

struct ListView: View {
    let items: [ListDTO]
    let horizontalPadding: CGFloat

    var body: some View {
        LazyVStack(alignment: .leading, spacing: 20) {
            ForEach(items) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text(item.title)
                        .font(.headline)
                }
                .padding(.horizontal, horizontalPadding)
            }
        }
    }
}
