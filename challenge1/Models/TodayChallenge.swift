//
//  Challenge.swift
//  challenge1
//
//  Created by 노을 on 3/29/26.
//

import Foundation
import SwiftData

@Model
class TodayChallenge {
    var date: Date
    var title: String
    var location: String
    var summary: String
    var tags: [String] = []
    var isCompleted: Bool = false
    
    init(date: Date, title: String, location: String, summary: String, tags: [String]) {
        self.date = date
        self.title = title
        self.location = location
        self.summary = summary
        self.tags = tags
    }
    
    func complete() {
        self.isCompleted = true
    }

    static let dummies: [TodayChallenge] = [
        TodayChallenge(
            date: Date.now,
            title: "영일대 1바퀴, 오늘의 나를 이겨봐",
            location: "영일대 해수욕장",
            summary: "포항 영일대해수욕장 해안을 따라 이어지는 약 4km의 러닝 코스.\n\n잔잔한 파도 소리와 함께 달리다 보면, 어느새 생각도 가벼워지고 발걸음도 리듬을 타게 돼.",
            tags: ["러닝", "예상 30분", "4km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "사야가 좋아하는 클라이밍",
            location: "클라이밍 짐",
            summary: "실내 클라이밍으로 전신 근력을 키우는 도전",
            tags: ["러닝", "예상 30분", "4km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "날씨도 좋은데 서핑 ㄱㄱ",
            location: "해운대 해수욕장",
            summary: "파도 위에서 균형을 잡으며 즐기는 서핑 챌린지",
            tags: ["러닝", "예상 30분", "4km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "골프 링고링고링!",
            location: "스크린 골프",
            summary: "스크린 골프로 시작하는 나만의 골프 도전기",
            tags: ["골프", "예상 1시간", "실내"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "새벽 한강, 고요함 속에서 달려봐",
            location: "한강 반포지구",
            summary: "반포한강공원에서 시작해 동작대교까지 왕복하는 6km 코스.\n\n이른 아침 강바람을 맞으며 달리면 하루가 훨씬 선명하게 시작돼.",
            tags: ["러닝", "예상 40분", "6km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "요가로 몸과 마음 리셋",
            location: "동네 요가 스튜디오",
            summary: "1시간 플로우 요가 클래스로 굳어있던 몸을 풀어주는 시간.\n\n호흡에 집중하다 보면 머릿속 잡념도 함께 녹아내려.",
            tags: ["요가", "예상 1시간", "실내"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "자전거로 도심 한 바퀴",
            location: "남산 순환도로",
            summary: "남산 공원 순환 자전거 코스 약 7km.\n\n오르막에서 느끼는 뿌듯함, 내리막에서 느끼는 짜릿함이 한 코스에 다 들어있어.",
            tags: ["자전거", "예상 45분", "7km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "수영장에서 랩 타임 깨기",
            location: "시립 수영장",
            summary: "자유형 500m를 꾸준히 완주하는 오늘의 목표.\n\n물속에서는 생각이 멈추고 오직 팔동작과 호흡만 남아.",
            tags: ["수영", "예상 40분", "500m"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "등산 가자, 정상에서 인증샷!",
            location: "북한산 둘레길",
            summary: "북한산 둘레길 4코스, 편도 약 5km 트레킹.\n\n숲 냄새 맡으며 걷다 보면 어느새 땀도 흐르고 기분도 맑아져.",
            tags: ["등산", "예상 2시간", "5km"]
        ),
        TodayChallenge(
            date: Date.now,
            title: "줄넘기 1000개 도전",
            location: "집 앞 공원",
            summary: "가볍게 워밍업 후 줄넘기 1000개 완주.\n\n단순하지만 의외로 강력한 유산소, 집 앞에서도 충분히 땀 뺄 수 있어.",
            tags: ["줄넘기", "예상 20분", "홈트"]
        ),
    ]
}

