//
//  HomeView.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                ZStack{
                    GlowCircle()
                    CharacterView()
                    StickerView(imageName: "sandcastle")
                    StickerView(imageName: "shellfish")
                    StickerView(imageName: "smallStarfish")
                }
                TodayActivityView()
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink {
                        CalendarView()
                    } label: {
                        Label("캘린더", systemImage: "calendar")
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HomeView()
}
