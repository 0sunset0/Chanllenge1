//
//  ActivityCard.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct ActivityCard: View {
    
    let completedActivity: CompletedActivity
    
    var body: some View {
        HStack {
            Text(completedActivity.todayChallenge.title)
                .font(.body)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.06), radius: 6, y: 2)
    }
}

#Preview {
      ActivityCard(
          completedActivity: CompletedActivity(
              completedDate: Date(),
              imageName: "activity",
              todayChallenge: TodayChallenge(
                  date: Date(),
                  title: "영일대 1바퀴, 오늘의 나를 이겨봐",
                  location: "영일대 해수욕장",
                  summary: "포항 영일대해수욕장 해안을 따라 이어지는 약 4km의 러닝 코스.",
                  tags: ["러닝", "예상 30분", "4km"]
              )
          )
      )
  }
