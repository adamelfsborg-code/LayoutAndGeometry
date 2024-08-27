//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Adam Elfsborg on 2024-08-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { pos in
                Text("Number \(pos)")
                    .alignmentGuide(.leading) { _ in
                        Double(pos) * 20
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
