//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Adam Elfsborg on 2024-08-27.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        HStack {
            Text("IMPORTANT")
                .frame(width: 200)
                .background(.blue)
                
            GeometryReader { proxy in
                Image(.piemonteWallpaper)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

#Preview {
    ContentView()
}
