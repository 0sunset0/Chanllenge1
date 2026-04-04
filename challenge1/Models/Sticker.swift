//
//  Sticker.swift
//  challenge1
//
//  Created by 노을 on 3/31/26.
//

import Foundation


struct Sticker: Identifiable {
    let id: UUID
    let name: String
    let imageName: String
    let x: CGFloat
    let y: CGFloat
    
    var offset: CGSize {
        get { CGSize(width: x, height: y) }
    }
    
    static let dummies: [Sticker] = [
            Sticker(id: UUID(), name: "모래성", imageName: "sandcastle", x: 0, y: 0),
            Sticker(id: UUID(),name: "불가사리", imageName: "starfish", x: 100, y: 50),
            Sticker(id: UUID(),name: "조개", imageName: "shell", x: -80, y: 120),
            Sticker(id: UUID(),name: "파도", imageName: "wave", x: 50, y: -30),
    ]
}

