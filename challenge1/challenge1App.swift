//
//  challenge1App.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI
import SwiftData

@main
struct challenge1App: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [TodayChallenge.self, CompletedActivity.self]) { result in
            guard let container = try? result.get() else { return }
            let context = container.mainContext

            let count = (try? context.fetchCount(FetchDescriptor<TodayChallenge>())) ?? 0
            guard count == 0 else { return }

            for challenge in TodayChallenge.dummies {
                context.insert(challenge)
            }
        }
    }
}
