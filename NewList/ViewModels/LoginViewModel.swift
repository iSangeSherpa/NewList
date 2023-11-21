//
//  LoginViewModel.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    
    init() {}
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    func login() {
        guard validate() else {
            return
        }
        
        // try to login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email"
            return false
        }
        
        return true
    }
}
