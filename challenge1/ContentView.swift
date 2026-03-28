//
//  ContentView.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding = false
    
    var body: some View {
        if hasSeenOnboarding {
            HomeView()
        }else{
            Onboarding()
        }
    }
}

#Preview {
    ContentView()
}
