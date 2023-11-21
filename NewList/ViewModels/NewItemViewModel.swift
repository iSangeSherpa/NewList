//
//  NewListViewModel.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    public func save() {
        
    }
}
