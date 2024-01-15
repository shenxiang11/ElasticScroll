//
//  ContentView.swift
//  ElasticScroll
//
//  Created by FS on 2024/1/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
                .navigationTitle("消息")
        }
    }
}

#Preview {
    ContentView()
}
