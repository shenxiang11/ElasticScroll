//
//  Home.swift
//  ElasticScroll
//
//  Created by FS on 2024/1/15.
//

import SwiftUI

struct Home: View {
    
    @State private var scrollRect: CGRect = .zero
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(sampleMessages) { message in
                        MesssageRow(message)
                            .elasticScroll(scrollRect: scrollRect, screenSize: proxy.size)
                    }
                }
                .padding(15)
                .offsetExtractor(coordinateSpace: "SCROLL_VIEW") { rect in
                    scrollRect = rect
                }
            }
            .coordinateSpace(name: "SCROLL_VIEW")
        }
    }
    
    func MesssageRow(_ message: Message) -> some View {
        HStack(spacing: 15) {
            Image(message.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(alignment: .bottomTrailing) {
                    Circle()
                        .fill(.green.gradient)
                        .frame(width: 15, height: 15)
                        .shadow(color: .primary.opacity(0.1), radius: 5, x: 5, y: 5)
                        .opacity(message.online ? 1 : 0)
                }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(message.name)
                    .font(.callout)
                    .fontWeight(.bold)
                
                Text(message.message)
                    .font(.caption)
                    .foregroundColor(message.read ? .gray : .primary)
                    .lineLimit(1)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}
