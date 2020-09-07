//
//  Animation02View.swift
//  Animations
//
//  Created by Rafael Calunga on 2020-09-07.
//  Copyright © 2020 Rafael Calunga. All rights reserved.
//

import SwiftUI

struct Animation02View: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.dragAmount = .zero
                        }
                }
        )
    }
}

struct Animation02View_Previews: PreviewProvider {
    static var previews: some View {
        Animation02View()
    }
}
