//
//  StoryUIMedia.swift
//  StoryUI
//
//  Created by HD-045 on 17/06/23.
//

import Foundation

public struct StoryUIModel: Identifiable, Hashable {
    public var id = UUID().uuidString
    public var user: StoryUIUser
    public var isSeen: Bool = false
    public var stories: [Story]
    
    public init(id: String = UUID().uuidString, user: StoryUIUser, isSeen: Bool = false, stories: [Story]) {
        self.id = id
        self.user = user
        self.isSeen = isSeen
        self.stories = stories
    }    
}
