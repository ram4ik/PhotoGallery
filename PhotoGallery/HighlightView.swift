//
//  HighlightView.swift
//  PhotoGallery
//
//  Created by test on 26.01.2024.
//

import SwiftUI

struct HighlightView: View {
    
    private let images: [String] = [
        "bird.circle", "hare.circle", "tortoise.circle", "dog.circle",
        "cat.circle", "lizard.circle", "ant.circle", "ladybug.circle",
        "fish.circle", "pawprint.circle"
    ]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                ForEach(images.indices) { i in
                    Image(systemName: images[i])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                }
            }
        }
    }
}

#Preview {
    HighlightView()
}
