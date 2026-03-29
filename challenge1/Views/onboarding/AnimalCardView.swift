//
//  OnboardingCard.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct AnimalCardView: View {
    var index: Int
    
    var body: some View {

        VStack{
            Image("dolphin")
                .resizable()
            Text("해파리")
                .font(.largeTitle)
            Text("혼자만의 시간 속에서\n마음을 채워가요!")
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .frame(width: 220, height: 300)
        .background(Color.white)
        .cornerRadius(24)
        .border(.main)
    }
}
