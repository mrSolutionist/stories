//
//  User.swift
//  StoryUI (iOS)
//
//  Created by HD-045 on 17/06/23.
//


import Foundation

public struct StoryUIUser: Identifiable, Hashable {
    public var id = UUID().uuidString
    public var name: String
    public var image: String
    
    public init(id: String = UUID().uuidString, name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}
