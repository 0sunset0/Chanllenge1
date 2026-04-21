//
//  Activity.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//


import Foundation
import SwiftData

/**
 Identifiable : 각 데이터를 고유하게 식별할 수 있다고 선언하는 프로토콜
 Codable: 데이터를 인코딩(저장) 하고 디코딩(불러오기) 할 수 있다고 선언하는 프로토콜
 */
@Model
class CompletedActivity{
    var completedDate: Date
    var imageName: String
    var todayChallenge: TodayChallenge
    
    init(completedDate: Date, imageName: String, todayChallenge: TodayChallenge) {
        self.completedDate = completedDate
        self.imageName = imageName
        self.todayChallenge = todayChallenge
    }
    
    /**
     더미 데이터
     문제 : SwiftData 객체는 반드시 ModelContext 안에서 살아야 한다. ModelContext 없이 @Model 객체를 생성하면 SwiftData가 추적하지 못한다. 실제 DB랑 연결이 안된 유령 객체가 된다.
     */
    static let dummies: [CompletedActivity] = [
        CompletedActivity(
            completedDate: .now,
            imageName: "activity",
            todayChallenge: TodayChallenge.dummies[1]
        ),
        CompletedActivity(
            completedDate: .now,
            imageName: "activity",
            todayChallenge: TodayChallenge.dummies[2]
        )
    ]
}
