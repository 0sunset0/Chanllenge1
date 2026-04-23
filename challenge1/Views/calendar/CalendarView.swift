//
//  CalendarView.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI
import SwiftData

struct CalendarView: View {
    /**
     선택한 날짜를 이 뷰 안에서만 쓴다면 → @State 맞
     부모 뷰(HomeView 등)에서 날짜를 제어하거나 공유해야 한다면 → @Binding
     */
    @State private var selectedDate = Date()
    @Query private var completedActivities: [CompletedActivity]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    calendarPicker
                    activityList
                }
                .padding(.vertical)
            }
        }
    }
    
    private var calendarPicker: some View {
        ActivityCalendarPicker(selectedDate: $selectedDate)
    }
    
    private var activityList: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(filtered) { completedActivity in
                NavigationLink(destination: CompletedActivityDetail(completedActivity: completedActivity)) {
                    ActivityCard(completedActivity: completedActivity)
                        .padding(.horizontal)
                }
                .buttonStyle(.plain)
            }
        }
    }

    var filtered: [CompletedActivity] {
        completedActivities.filter {
            // $0 = 배열의 각 액티비티
            // completedDate가 selectedDate와 같은 날인지 확인
            Calendar.current.isDate($0.completedDate, inSameDayAs: selectedDate)
        }
    }
}

#Preview {
    CalendarView()
}
