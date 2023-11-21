//
//  ListView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var viewmodel = ListViewModel()
    var body: some View {
        
        NavigationView {
            VStack {
                // to do list here
                Text("List here")
            }
            .navigationTitle("ToDos")
            .toolbar {
                Button {
                    // action on pressing the button
                    viewmodel.isPresented = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewmodel.isPresented,
                   content: {
                NewItemView(isNewItemPresented: $viewmodel.isPresented)
            })
        }
        
    }
}

#Preview {
    ListView()
}
