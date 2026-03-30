//
//  ActivityCertificationView.swift
//  challenge1
//
//  Created by 노을 on 3/27/26.
//

import SwiftUI

struct ActivityCertificationView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack(){
            Text("제이슨 나 좀 뛴다! 러닝코스")
                .font(.title)
                .bold()
                .padding()
            
            Image("activity")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(22)
                .padding(30)
        }
    }
}

#Preview {
    ActivityCertificationView()
}
