//
//  Animation01View.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-07.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

struct Animation01View: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct Animation01View_Previews: PreviewProvider {
    static var previews: some View {
        Animation01View()
    }
}
