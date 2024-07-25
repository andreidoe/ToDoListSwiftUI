//
//  ContentView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if  viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListItemsView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
