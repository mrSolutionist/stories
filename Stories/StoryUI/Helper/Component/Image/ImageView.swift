//
//  StoryUIImageView.swift
//  StoryUI
//
//  Created by HD-045 on 17/06/23.

import SwiftUI
import AVKit

struct ImageView: UIViewRepresentable {
    
    var imageURL: String
    let imageIsLoaded: () -> Void
   
    
    func makeUIView(context: UIViewRepresentableContext<ImageView>) -> ImageLoader {
        return ImageLoader()
    }
    
    func updateUIView(_ uiView: ImageLoader, context: Context) {
        uiView.loadImageWithUrl(imageURL, imageIsLoaded: imageIsLoaded)
    }
    
}
