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
        Button("Hello, World!") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
