//
//  ProgressView.swift
//  StoryUI (iOS)
//
//  Created by HD-045 on 17/06/23.
//

import SwiftUI

struct ProgressBarView: View {
    var timerProgress: CGFloat
    var index: Int
    
    var body: some View {
        GeometryReader { proxy in
            
            let width = proxy.size.width
            let progress = timerProgress - CGFloat(index)
            let perfectProgress = min(max(progress, 0), 1)
            
            Capsule()
                .fill(.gray.opacity(0.5))
                .overlay (
                    Capsule()
                        .fill(.white)
                        .frame(width: width * perfectProgress)
                    
                    ,alignment: .leading
                )
        }.frame(height: Constant.progressBarHeight)
    }
}
