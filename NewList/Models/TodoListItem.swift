//
//  TodoListItem.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import Foundation

struct TodoListItem: Codable, Identifiable {
    var id: String
    var title: String
    var dueDate: TimeInterval
    var createDate: TimeInterval
    var isDone: Bool
}
