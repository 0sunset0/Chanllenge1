//
//  Sticker.swift
//  challenge1
//
//  Created by 노을 on 3/30/26.
//

import SwiftUI

struct Sticker: View {
    @State private var offset: CGPoint = .zero
    @State private var isDragging = false
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { value in offset = value.location }
    }
    
    var body: some View {
        Image("sandcastle")
            .gesture(drag)
            .position(x: offset.x, y: offset.y)
    }
}

#Preview {
    Sticker()
}
