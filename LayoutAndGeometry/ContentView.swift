//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Adam Elfsborg on 2024-08-27.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<500) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(
                                Color(
                                    hue: min(1.0, proxy.frame(in: .global).minY / fullView.size.height),
                                    saturation: min(1.0, proxy.frame(in: .global).width / fullView.size.height),
                                    brightness: min(1.0, proxy.frame(in: .global).midY / fullView.size.height)
                                )
                            )
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5,
                                              axis: (x: 0, y: 1, z: 0))
                            .opacity(min(max(Double(((proxy.frame(in: .global).minY - 50) / (150 - 50))), 0), 1))
                            .scaleEffect(max(0.5, (proxy.frame(in: .global).minY - 0) / (fullView.size.height - 0)))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
