//
//  GlowCircle이.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct GlowCircle: View {
    var body: some View {
        Circle()
            .fill(.main.opacity(0.15))
            .frame(width: 220, height: 220)
            .blur(radius: 80)
    }
}

#Preview {
    GlowCircle()
}
