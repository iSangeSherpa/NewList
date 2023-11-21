//
//  NewItemView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewmodel = NewItemViewModel()
    @Binding var isNewItemPresented: Bool
    
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
                    if viewmodel.canSave {
                        viewmodel.save()
                        isNewItemPresented = false
                    } else {
                        viewmodel.showAlert = true
                    }
                }
                .padding(.vertical, 20)
            }
            .alert(isPresented: $viewmodel.showAlert,
                   content: {
                Alert(title: Text("Error"),
                      message: Text("Fill in all fields"))
            })
        }
    }
}

#Preview {
    NewItemView(isNewItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
