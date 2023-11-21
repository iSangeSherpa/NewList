//
//  MainViewModel.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import FirebaseAuth
import Foundation

class MainViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener {[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
}
