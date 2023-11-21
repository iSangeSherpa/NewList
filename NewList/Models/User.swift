//
//  User.swift
//  NewList
//
//  Created by Sange Sherpa on 17/11/2023.
//

import Foundation

struct User: Codable {
    var id: String
    var name: String
    var email: String
    var joined: TimeInterval
}
