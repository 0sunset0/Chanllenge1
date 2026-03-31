//
//  Sticker.swift
//  challenge1
//
//  Created by 노을 on 3/31/26.
//

import Foundation
import SwiftData

@Model
class Sticker {
    var name: String
    var imageName: String
    var x: CGFloat
    var y: CGFloat
    
    init(name: String, imageName: String, x: CGFloat, y: CGFloat){
        self.name = name
        self.imageName = imageName
        self.x = x
        self.y = y
    }
    
    var offset: CGSize {
        get { CGSize(width: x, height: y) }
    }
    
    static let dummies: [Sticker] = [
            Sticker(name: "모래성", imageName: "sandcastle", x: 0, y: 0),
            Sticker(name: "불가사리", imageName: "starfish", x: 100, y: 50),
            Sticker(name: "조개", imageName: "shell", x: -80, y: 120),
            Sticker(name: "파도", imageName: "wave", x: 50, y: -30),
    ]
}

