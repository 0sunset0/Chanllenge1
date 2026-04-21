//
//  Level.swift
//  challenge1
//
//  Created by 노을 on 4/21/26.
//

import Foundation

enum Level: CaseIterable {
    case egg
    case baby
    case teen
    case adult
    case master
    
    static func from(completedCount: Int) -> Level {
        switch completedCount {
        case 0..<5:   return .egg
        case 5..<10:  return .baby
        case 10..<15: return .teen
        case 15..<20: return .adult
        default:      return .master
        }
    }
}
