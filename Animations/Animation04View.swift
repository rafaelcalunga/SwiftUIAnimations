//
// Showing and hiding views with transitions
//
//  Animation04View.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-07.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

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
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                    //.transition(.scale)
            }
        }
    }
}

struct Animation04View_Previews: PreviewProvider {
    static var previews: some View {
        Animation04View()
    }
}
