//
//  EnhancedView.swift
//  PhotoGallery
//
//  Created by test on 26.01.2024.
//

import SwiftUI

struct EnhancedView: View {
    @Binding var imageFile: String
    
    var body: some View {
        VStack {
            Image(systemName: imageFile)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .padding()
            
            Text(imageFile)
                .font(.largeTitle)
                .bold()
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    EnhancedView(imageFile: .constant("bird.circle"))
}
