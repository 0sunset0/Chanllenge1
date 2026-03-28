//
//  CalendarView.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct CalendarView: View {
    @State private var date = Date()
    
    var body: some View {
        
        VStack{
            DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
            .datePickerStyle(.graphical)
            .padding(30)
        }
    }
}

#Preview {
    CalendarView()
}
