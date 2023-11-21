//
//  NewItemView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewmodel = NewItemViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 20)
            
            Form {
                TextField("Title", text: $viewmodel.title)
                
                DatePicker("Due Date", selection: $viewmodel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                CustomButtonView(title: "Save", backgroundColor: .orange) {
                    viewmodel.save()
                }
                .padding(.vertical, 20)
            }
        }
    }
}

#Preview {
    NewItemView()
}
