//
//  User.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinedAt: TimeInterval
}
