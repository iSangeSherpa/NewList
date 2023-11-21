//
//  LoginView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Todo List",
                       subTitle: "Get Things Done",
                       angle: -15,
                       backgroundColor: .pink)
            
            // Login Form
            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                CustomButtonView(title: "Login",
                                 backgroundColor: .blue) {
                    viewModel.login()
                }
            }
            
            // Create Account
            VStack {
                Text("New around here?")
                
                NavigationLink("Create new account",
                               destination: RegisterView())
            }
            .padding(.bottom, 40)
            
            Spacer()
        }
        
    }
}

#Preview {
    LoginView()
}
