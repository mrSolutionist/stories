//
//  ContentView.swift
//  Stories
//
//  Created by HD-045 on 17/06/23.
//

import SwiftUI




import SwiftUI


struct ContentView: View {
    @State var isPresented: Bool = false
    @State var stories = [
        StoryUIModel(user: StoryUIUser(name: "ROBIN GEROGE", image: "image1"), stories: [
            Story(mediaURL: Bundle.main.url(forResource: "video", withExtension: "mp4")!.absoluteString, date: "10 min ago", type: .video),
            Story(mediaURL: Bundle.main.url(forResource: "IMAGE1", withExtension: "jpg")!.absoluteString, date: "1 hour ago", type: .image),
            Story(mediaURL: "IMAGE2", date: "12 hour ago", type: .image)
        ]),
        StoryUIModel(user: StoryUIUser(name: "JERRY", image: "IMAGE2"), stories: [
            Story(mediaURL: "IMAGE3", date: "12 hour ago", type: .image),
            Story(mediaURL: Bundle.main.url(forResource: "IMAGE1", withExtension: "jpg")!.absoluteString, date: "30 min ago", type: .image)
        ]),
    ]
    var body: some View {
        NavigationView {
            Button {
                isPresented = true
            } label: {
                Text("Show")
            }
            .fullScreenCover(isPresented: $isPresented) {
                StoryView(stories: stories,
                          isPresented: $isPresented)
            }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
