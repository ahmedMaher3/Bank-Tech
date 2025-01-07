//
//  CoussView.swift
//  Bank Tech
//
//  Created by ahmed maher on 15/12/2024.
//

import SwiftUI

struct CarouselView: View {
    let images: [String]

    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .cornerRadius(10)
                    .padding(.horizontal, 8)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .frame(height: 200)
    }
}


