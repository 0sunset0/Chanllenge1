//
//  DesignSystem.swift
//  challenge1
//
//  피그마 디자인 시스템 (node: 236-2043)
//

import SwiftUI

// MARK: - Hex initializer

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255
        let g = Double((int >> 8) & 0xFF) / 255
        let b = Double(int & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}

// MARK: - Color tokens

extension Color {
    /// Primary/Main — #4A7FBF
    static let main = Color(hex: "4A7FBF")

    /// Primary/OnMain — #FFFFFF
    static let onMain = Color.white

    /// Primary/Container — #BDD4F0
    static let primaryContainer = Color(hex: "BDD4F0")

    /// Primary/OnContainer — #1A3A6B
    static let onPrimaryContainer = Color(hex: "1A3A6B")

    /// Surface/Card — #FFFFFF
    static let card = Color.white

    /// text/body — #202020
    static let textBody = Color(hex: "202020")

    /// text/secondary — #525252
    static let textSecondary = Color(hex: "525252")

    /// Background gradient: top stop (#BDD4F0)
    static let bgTop = Color(hex: "BDD4F0")

    /// Background gradient: middle stop (#E6F3FB)
    static let bgMid = Color(hex: "E6F3FB")

    /// Card shadow base color — rgba(63,119,168)
    static let cardShadow = Color(hex: "3F77A8")
}

// MARK: - Background gradient

extension LinearGradient {
    /// 앱 전체 배경 그라데이션 (background 토큰)
    static let appBackground = LinearGradient(
        stops: [
            .init(color: .bgTop,  location: 0),
            .init(color: .bgMid,  location: 0.3),
            .init(color: .white,  location: 1.0)
        ],
        startPoint: .top,
        endPoint: .bottom
    )
}

// MARK: - Typography

extension Font {
    /// Large Title — Bold · 34
    static let dsLargeTitle  = Font.system(size: 34, weight: .bold)

    /// Title 1 — Bold · 28
    static let dsTitle1      = Font.system(size: 28, weight: .bold)

    /// Title 2 — Bold · 22
    static let dsTitle2      = Font.system(size: 22, weight: .bold)

    /// Headline — Semibold · 17
    static let dsHeadline    = Font.system(size: 17, weight: .semibold)

    /// Body — Regular · 17
    static let dsBody        = Font.system(size: 17, weight: .regular)

    /// Subheadline — Regular · 15
    static let dsSubheadline = Font.system(size: 15, weight: .regular)

    /// Caption — Regular · 12
    static let dsCaption     = Font.system(size: 12, weight: .regular)
}

// MARK: - Reusable modifiers

extension View {
    /// 카드 그림자: rgba(63,119,168, 0.4), blur 20, y 2
    func cardShadow() -> some View {
        shadow(color: Color.cardShadow.opacity(0.4), radius: 20, x: 0, y: 2)
    }

    /// 앱 배경 그라데이션 (ignoresSafeArea 포함)
    func appBackground() -> some View {
        background {
            LinearGradient.appBackground
                .ignoresSafeArea()
        }
    }
}
