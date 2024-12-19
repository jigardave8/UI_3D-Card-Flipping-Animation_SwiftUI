//
//  ContentView.swift
//  UI_3D Card Flipping Animation_SwiftUI
//
//  Created by BitDegree on 19/12/24.
//

import SwiftUI

struct CardFlipAnimation: View {
    @State private var flipped = false

    var body: some View {
        ZStack {
            if flipped {
                Text("Back Side")
                    .frame(width: 200, height: 300)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0, y: 1, z: 0)
                    )
            } else {
                Text("Front Side")
                    .frame(width: 200, height: 300)
                    .background(Color.red)
                    .cornerRadius(15)
                    .rotation3DEffect(
                        .degrees(0),
                        axis: (x: 0, y: 1, z: 0)
                    )
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.6)) {
                flipped.toggle()
            }
        }
    }
}
