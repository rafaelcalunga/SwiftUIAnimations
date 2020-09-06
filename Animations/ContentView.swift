//
//  ContentView.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-05.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
            // do something
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation
                        .easeOut(duration: 1)
                        .repeatForever(autoreverses: false)
            )
        )
        .onAppear() {
            self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
