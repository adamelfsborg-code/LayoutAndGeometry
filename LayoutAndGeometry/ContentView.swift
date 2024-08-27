//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Adam Elfsborg on 2024-08-27.
//

import SwiftUI


extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.firstTextBaseline]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@adamelfsborg1")
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                Image(.piemonteWallpaper)
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            VStack {
                Text("Full name: ")
                Text("CARL ADAM")
                    .font(.largeTitle)
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
            }
        }
    }
}

#Preview {
    ContentView()
}
