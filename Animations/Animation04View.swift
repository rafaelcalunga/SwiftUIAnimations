//
// Showing and hiding views with transitions
// Building custom transitions using ViewModifier
//
//  Animation04View.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-07.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor)
        .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct Animation04View: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    //.transition(.asymmetric(insertion: .scale, removal: .opacity))
                    //.transition(.scale)
                    .transition(.pivot)
            }
        }
    }
}

struct Animation04View_Previews: PreviewProvider {
    static var previews: some View {
        Animation04View()
    }
}
