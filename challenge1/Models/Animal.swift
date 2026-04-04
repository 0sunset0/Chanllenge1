//
//  Animal.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import Foundation

struct Animal: Identifiable{
    let id: UUID
    let name: String
    let image: String
    let description: String
    /**
     static는 타입 자체에 속해서, Animal 인스턴스가 없어도 존재 가능
     */
    static let all: [Animal] = [
        Animal(id: UUID(), name: "돌고래", image: "dolphin", description: "사람들과 함께할 때 더 빛나요."),
        Animal(id: UUID(), name: "해파리", image: "jellyfish", description: "혼자만의 시간 속에서 마음을 채워가요!"),
        Animal(id: UUID(), name: "바다거북이", image: "turtle", description: "느려보여도 끝까지 도착하는 힘이 있어요!"),
        Animal(id: UUID(), name: "꽃게", image: "crab", description: "겉으로는 단단해 보이지만 속은 여린 편이에요!"),
        Animal(id: UUID(), name: "불가사리", image: "starfish", description: "상처를 회복하는 힘이 강하고, 조용하지만 단단한 내면을 가지고 있어요")
    ]
 }
