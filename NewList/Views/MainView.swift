//
//  ContentView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewmodel = MainViewModel()
    
    var body: some View {
        if viewmodel.isSignedIn, !viewmodel.currentUserId.isEmpty {
            TabView {
                ListView()
                    .tabItem {
                        Label("ToDos", systemImage: "list.bullet")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
