//
//  CharacterView.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct CharacterView: View {
    @State private var isMoving = false
    @AppStorage("profileAnimal") private var profileAnimal: Int?
    
    var body: some View {
        //TODO: 기본 프로필 이미지는 뭘로 하지?
        let animal = Animal.all.first(where: {$0.id == profileAnimal})
        Image(animal?.image ?? "turtle")
            .resizable()
            .frame(width: 350, height: 350)
            .offset(y: isMoving ? -20 : 0)
            .animation(
                .easeInOut(duration: 0.8).repeatForever(autoreverses: true),
                value: isMoving
            )
            .onAppear {
                isMoving = true
            }
    }
}

#Preview {
    CharacterView()
}
