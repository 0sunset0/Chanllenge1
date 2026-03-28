//
//  OnboardingCard.swift
//  challenge1
//
//  Created by 노을 on 3/28/26.
//

import SwiftUI

struct OnboardingCard: View {
    var index: Int
    @Binding var selectedIndex: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(index == selectedIndex ? Color.blue : Color.gray)
            .aspectRatio(1, contentMode: .fit)
            .onTapGesture{
                selectedIndex = index
            }
    }
}
