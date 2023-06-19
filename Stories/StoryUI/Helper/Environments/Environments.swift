//
//  Environments.swift
//  StoryUI
//
//  Created by HD-045 on 17/06/23.
//

import SwiftUI

struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TemporaryImageCache()
    static let imageCache = NSCache<AnyObject, AnyObject>()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get {
            self[ImageCacheKey.self]
        }
        set {
            self[ImageCacheKey.self] = newValue
        }
    }
}
