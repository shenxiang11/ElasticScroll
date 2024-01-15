//
//  ElasticScroll.swift
//  ElasticScroll
//
//  Created by FS on 2024/1/15.
//

import SwiftUI

struct ElasticScroll: ViewModifier {
    var scrollRect: CGRect
    var screenSize: CGSize
    
    @State private var viewRect: CGRect = .zero
    
    func body(content: Content) -> some View {
        let progress = scrollRect.minY / screenSize.height
        let elasticOffset = progress * viewRect.minY * 1.8
        let bottomProgress = max(1 - (scrollRect.maxY / screenSize.height), 0)
        let bottomElasticOffset = viewRect.maxY * bottomProgress * 1
        
        content
            .offset(y: scrollRect.minY > 0 ? elasticOffset : 0)
            .offset(y: scrollRect.maxY < screenSize.height ? bottomElasticOffset : 0)
            .offsetExtractor(coordinateSpace: "SCROLL_VIEW") { rect in
                viewRect = rect
            }
    }
}

extension View {
    func elasticScroll(scrollRect: CGRect, screenSize: CGSize) -> some View {
        self
            .modifier(ElasticScroll(scrollRect: scrollRect, screenSize: screenSize))
    }
}


#Preview {
    ContentView()
}
