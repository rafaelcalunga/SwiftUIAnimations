//
//  Animating gestures
//
//  Animation03View.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-07.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

struct Animation03View: View {
    
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount: CGSize = .zero
    
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(self.letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(self.enabled ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num) / 20))
            }
        }
        .gesture(
            DragGesture()
                .onChanged { self.dragAmount = $0.translation }
                .onEnded { _ in
                    self.dragAmount = .zero
                    self.enabled.toggle()
            }
        )
    }
}

struct Animation03View_Previews: PreviewProvider {
    static var previews: some View {
        Animation03View()
    }
}
