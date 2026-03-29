//
//  Onboarding.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct OnboardingView: View {
    @State private var selection: Int = 0
    @AppStorage("profileAnimal") private var profileAnimal = ""
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    let animals = ["dolphin", "whale", "turtle", "crab"]
    
    var body: some View {
        
        ZStack{
            GlowCircle()
            VStack{
                Text("당신은 어떤 해양 생물인가요?")
                    .font(.title2)
        
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 10) {
                        AnimalCardView(index: 0).tag(0)
                        AnimalCardView(index: 1).tag(1)
                        AnimalCardView(index: 2).tag(2)
                        AnimalCardView(index: 3).tag(3)
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAligned)
                .padding(.horizontal, 50)
                
                Button {
                    profileAnimal = animals[selection]
                    hasSeenOnboarding = true
                } label: {
                    Text("다음")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .buttonStyle(.bordered)
                .tint(.main)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
