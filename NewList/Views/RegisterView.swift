//
//  RegisterView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewmodel = RegisterViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subTitle: "Get Things Sorted",
                       angle: 15,
                       backgroundColor: .brown)
            
            // Login Form
            Form {
                TextField("Full Name", text: $viewmodel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email", text: $viewmodel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewmodel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                CustomButtonView(
                    title: "Register",
                    backgroundColor: .blue) {
                        viewmodel.register()
                    }
                    .padding()
            }
            .offset(y: -50)
            
            // Create Account
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
