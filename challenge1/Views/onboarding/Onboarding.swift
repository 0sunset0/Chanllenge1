//
//  Onboarding.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct Onboarding: View {
    @State private var selectedIndex: Int = -1
    @AppStorage("profileAnimal") private var profileAnimal = ""
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    let animals = ["dolphin", "whale", "turtle", "crab"]
    
    var body: some View {
        
        ZStack{
            Circle()
                .fill(.blue.opacity(0.1))
                .frame(width: 200, height: 200)
                .blur(radius: 50)
            
            VStack{
                Text("당신은 어떤 해양 생물인가요?")
                    .font(.title2)
                
                LazyVGrid(columns: columns, spacing: 10){
                    ForEach(animals.indices, id: \.self) { index in
                        OnboardingCard(index: index, selectedIndex: $selectedIndex)
                    }
                }
                .padding(10)
                
                Button {
                    profileAnimal = animals[selectedIndex]
                    hasSeenOnboarding = true
                } label: {
                    Text("다음")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundStyle(.white)
                        .background(selectedIndex != -1 ? Color.blue : Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .disabled(selectedIndex == -1)
            }
        }

        
    }
}

#Preview {
    Onboarding()
}
