//
//  RegisterView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewmodel = RegisterViewModel()
    
<<<<<<< HEAD
    @StateObject var viewModel = RegisterViewModel()
    
=======
>>>>>>> d0a8cb5 (test)
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subTitle: "Get Things Sorted",
                       angle: 15,
                       backgroundColor: .brown)
            
            // Login Form
            Form {
<<<<<<< HEAD
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
=======
                TextField("Full Name", text: $viewmodel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email", text: $viewmodel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewmodel.password)
>>>>>>> bf2e3c0 (registered)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                CustomButtonView(
                    title: "Register",
                    backgroundColor: .blue) {
                        viewmodel.register()
                        MainView()
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
