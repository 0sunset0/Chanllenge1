//
//  CertificationButton.swift
//  challenge1
//
//  Created by 노을 on 3/31/26.
//

import SwiftUI

struct CertificationButton: View {
    let isImageSelected: Bool
    
    var body: some View {
        Button {
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
    CertificationButton(isImageSelected: true)
}
