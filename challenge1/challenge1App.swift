//
//  challenge1App.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

@main
struct challenge1App: App {
    @State private var store = ChallengeStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(store)
        }
    }
}
