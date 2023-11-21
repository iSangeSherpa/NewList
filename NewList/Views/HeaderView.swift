//
//  HeaderView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subTitle: String
    var angle: Double
    var backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(Color.white)
                Text(subTitle)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 2,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(title: "Title",
               subTitle: "Subtitle",
               angle: 0,
               backgroundColor: .pink)
}
