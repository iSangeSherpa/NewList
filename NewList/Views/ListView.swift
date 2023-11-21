//
//  ListView.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import SwiftUI

struct ListView: View {
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
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        
    }
}

#Preview {
    ListView()
}
