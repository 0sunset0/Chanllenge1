//
//  ChallengeCertification.swift
//  challenge1
//
//  Created by 노을 on 3/30/26.
//

import SwiftUI
import PhotosUI

struct ChallengeCertificationButton: View {
    let challenge: Challenge
    @State private var navigate = false
    
    var body: some View {
        Button("인증하기") {
            navigate = true
        }
        .buttonStyle(.bordered)
        .tint(.main)
        .fullScreenCover(isPresented: $navigate) {
            ActivityCertificationView(challenge: challenge)
        }
    }
}

#Preview {
    ChallengeCertificationButton(challenge: Challenge.dummies[1])
}
