//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI
import FirebaseCore

@main
struct Application: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
