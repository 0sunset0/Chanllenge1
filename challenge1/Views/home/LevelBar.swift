//
//  LevelBar.swift
//  challenge1
//
//  Created by 노을 on 4/20/26.
//

import SwiftUI

struct LevelBar: View {
    let levelName: String
    let description: String
    let progress: Double  // 0.0 ~ 1.0

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(levelName)
                .font(.headline)
            Text(description)
                .font(.caption)

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    // Track
                    RoundedRectangle(cornerRadius: 6)
                        .fill(Color(red: 0.9, green: 0.93, blue: 0.97))

                    // Fill + Highlight
                    let fillWidth = geo.size.width * max(0, min(1, progress))
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 6)
                            .fill(LinearGradient(
                                colors: [
                                    Color(red: 0.29, green: 0.498, blue: 0.749),
                                    Color(red: 0.078, green: 0.624, blue: 0.804)
                                ],
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
                            .shadow(color: Color(red: 0, green: 0.529, blue: 1).opacity(0.4), radius: 2, x: 0, y: 1)

                        RoundedRectangle(cornerRadius: 6)
                            .fill(LinearGradient(
                                colors: [.white, .white.opacity(0)],
                                startPoint: .top,
                                endPoint: .bottom
                            ))
                            .opacity(0.35)
                    }
                    .frame(width: fillWidth)
                }
            }
            .frame(height: 12)
        }
        .frame(width: 300)
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 4)
    }
}

#Preview {
    LevelBar(levelName: "아기 돌고래", description: "아직 세상에 나오지 않은 신비로운 존재", progress: 0.6)
}
