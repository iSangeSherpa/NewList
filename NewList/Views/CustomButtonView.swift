//
//  CustomButtonView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var backgroundColor: Color
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
    }
}

#Preview {
    CustomButtonView(title: "Helloooo",
                     backgroundColor: .pink,
                     action: {})
}
