//
//  HomeView.swift
//  challenge1
//
//  Created by 노을 on 3/26/26.
//

import SwiftUI

struct HomeView: View {
    @State private var isMoving = false
    
    var body: some View {
        NavigationStack{
            VStack {
                ZStack{
                    Circle()
                        .fill(.blue.opacity(0.1))
                        .frame(width: 200, height: 200)
                        .blur(radius: 50)
                    Image("dolphin")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .offset(y: isMoving ? -20 : 0)
                        .animation(
                            .easeInOut(duration: 0.8).repeatForever(autoreverses: true),
                            value: isMoving
                        )
                        .onAppear {
                            isMoving = true
                        }
                }
                
                VStack{
                    Text("오늘은 제이슨의 러닝코스 달려보세요~!")
                    .font(.title3)
                    Text("벌써 40명이나 참여했어요!")
                    .foregroundStyle(.blue)
                    
                    Button {
                       print("dwuhuwd")
                    } label: {
                        Text("인증하기")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        print("캘린더 뷰 보기")
                    } label: {
                        Text("캘린더 > ")
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
