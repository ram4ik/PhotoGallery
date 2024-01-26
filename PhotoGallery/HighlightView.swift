//
//  HighlightView.swift
//  PhotoGallery
//
//  Created by test on 26.01.2024.
//

import SwiftUI

struct HighlightView: View {
    
    @State private var isClicked: Bool = false
    @State private var imageFile: String = ""
    
    private let images: [String] = [
        "bird.circle", "hare.circle", "tortoise.circle", "dog.circle",
        "cat.circle", "lizard.circle", "ant.circle", "ladybug.circle",
        "fish.circle", "pawprint.circle"
    ]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(images.indices) { i in
                        NavigationLink(destination: EnhancedView(imageFile: $imageFile), isActive: $isClicked) {
                            Image(systemName: images[i])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                    imageFile = images[i]
                                    isClicked = true
                                }
                        }
                    }
                }
            }.navigationViewStyle(.stack)
        }
    }
}

#Preview {
    HighlightView()
}
