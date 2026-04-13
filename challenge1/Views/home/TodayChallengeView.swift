//
//  TodayActivityView.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI


struct TodayChallengeView: View {
    @Environment(CompletedChallengeStore.self) private var store
    
    var body: some View {
        VStack{
            if let challenge = store.challenges.first {
                Text(challenge.title)
                    .font(.title2.bold())
                
                Text("벌써 40명이나 참여했어요!")
                    .foregroundStyle(.main)
                ChallengeCertificationButton(challenge: challenge)
            } else {
                Text("오늘은 챌린지가 없어요!")
                    .font(.title2.bold())
                Text("잠시 쉬어가도 좋아요")
                    .foregroundStyle(.main)
            }
        }
    }
}

#Preview {
    TodayChallengeView()
        .environment(CompletedChallengeStore())
}
