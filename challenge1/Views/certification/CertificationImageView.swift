//
//  CertificationImageView.swift
//  challenge1
//
//  Created by 노을 on 3/31/26.
//

import SwiftUI
import PhotosUI

struct CertificationImageView: View {
    @State private var selectedItem: PhotosPickerItem?
    @Binding var selectedImage: UIImage?
    
    var body: some View {
        Form {
            Section {
                PhotosPicker(selection: $selectedItem, matching: .images) {
                    if let selectedImage {
                        Image(uiImage: selectedImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 260)
                            .clipped()
                    } else {
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.secondary.opacity(0.4), style: StrokeStyle(lineWidth: 1.5, dash: [6]))
                            .frame(maxWidth: .infinity)
                            .frame(height: 260)
                            .overlay {
                                VStack(spacing: 8) {
                                    Image(systemName: "photo.badge.plus")
                                        .font(.system(size: 32))
                                        .foregroundStyle(.secondary)
                                    Text("사진 선택")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                    }
                }
                .buttonStyle(.plain)
                .listRowInsets(.init())
            }
        }
        .onChange(of: selectedItem) { _, newItem in
            Task {
                if let data = try? await newItem?.loadTransferable(type: Data.self),
                   let image = UIImage(data: data) {
                    selectedImage = image
                }
            }
        }
    }
}

#Preview {
      CertificationImageView(selectedImage: .constant(nil))
  }
