//
//  ChallengeCertification.swift
//  challenge1
//
//  Created by 노을 on 3/30/26.
//

import SwiftUI
import PhotosUI

struct ChallengeCertificationButton: View {
    
    
    @State private var isConfirming = false
    @State var selectedItems: [PhotosPickerItem] = []
    @State private var showPhotoPicker = false
    
    var body: some View {
        Button("인증하기") {
            isConfirming = true
        }
        .buttonStyle(.bordered)
        .tint(.main)
        .confirmationDialog(
            "Are you sure you want to import this file?",
            isPresented: $isConfirming
        ) {
            Button {
                // Handle import action.
            } label: {
                Text("카메라")
            }
            Button {
                showPhotoPicker = true
                print(selectedItems)
            } label: {
                Text("라이브러리")
            }
        }.photosPicker(isPresented: $showPhotoPicker, selection: $selectedItems, matching: .images)
    }
}

#Preview {
    ChallengeCertificationButton()
}
