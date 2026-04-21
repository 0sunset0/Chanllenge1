//
//  AppTab.swift
//  challenge1
//

import Foundation

enum AppTab: CaseIterable {
    case home
    case calendar

    var title: String {
        switch self {
        case .home: return "홈"
        case .calendar: return "캘린더"
        }
    }

    var icon: String {
        switch self {
        case .home: return "house"
        case .calendar: return "calendar"
        }
    }

    var selectedIcon: String {
        switch self {
        case .home: return "house.fill"
        case .calendar: return "calendar"
        }
    }
}
