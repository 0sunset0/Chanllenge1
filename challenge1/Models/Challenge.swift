//
//  Challenge.swift
//  challenge1
//
//  Created by 노을 on 3/29/26.
//

import Foundation

struct Challenge: Identifiable {
    let id: UUID
    let date: Date
    let title: String
    
    static let dummies: [Challenge] = [
        Challenge(id: UUID(), date: Date(), title: "제이슨과 초보 러닝 코스 즐기기"),
        Challenge(id: UUID(), date: Date(), title: "사야가 좋아하는 클라이밍"),
        Challenge(id: UUID(), date: Date(), title: "날씨도 좋은데 서핑 ㄱㄱ"),
        Challenge(id: UUID(), date: Date(), title: "골프 링고링고링!"),
    ]
}

