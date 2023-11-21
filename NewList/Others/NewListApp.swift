//
//  NewListApp.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import FirebaseCore
import SwiftUI

@main
struct NewListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
