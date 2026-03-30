//
//  OnboardingCard.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct AnimalCardView: View {
    var animal: Animal
    
    var body: some View {

        VStack{
            Image(animal.image)
                .resizable()
            Text(animal.name)
                .font(.largeTitle)
            Text(animal.description)
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .frame(width: 220, height: 300)
        .background(Color.white)
        .cornerRadius(24)
        .border(.main)
    }
}
