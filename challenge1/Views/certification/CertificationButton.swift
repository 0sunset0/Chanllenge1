//
//  CertificationButton.swift
//  challenge1
//
//  Created by 노을 on 3/31/26.
//

import SwiftUI

struct CertificationButton: View {
    let isImageSelected: Bool
    let challenge: Challenge
    @Environment(CompletedChallengeStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button {
            store.complete(challenge: challenge, imageName: "")
            print("스토어 저장 완료")
            dismiss()
        } label: {
            Text("다음")
                .frame(maxWidth: .infinity, maxHeight: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .buttonStyle(.bordered)
        .tint(.main)
        .disabled(isImageSelected == false)
    }
}

#Preview {
    CertificationButton(isImageSelected: true, challenge: Challenge.dummies[0])
}
