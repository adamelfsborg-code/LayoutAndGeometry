//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Adam Elfsborg on 2024-08-27.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            
            InnerView()
                .background(.green)
            
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("left")
            
            GeometryReader { proxy in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center: \(proxy.frame(in: .global).midX) * \(proxy.frame(in: .global).midY)")
                        print("Custom center: \(proxy.frame(in: .named("Custom")).midX) * \(proxy.frame(in: .named("Custom")).midY)")
                        print("Local center: \(proxy.frame(in: .local).midX) * \(proxy.frame(in: .local).midY)")
                    }
            }
            .background(.orange)
            
            Text("Right")
        }
    }
}


struct ContentView: View {
    var body: some View {
        OuterView()
            .background(.red)
            .coordinateSpace(name: "Custom")
    }
}

#Preview {
    ContentView()
}
