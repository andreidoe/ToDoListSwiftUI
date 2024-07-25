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
        if  viewModel.isSignedIn {
            TabView {
                accountView
            }
        } else {
            LoginView()
        }
    }
    
    /*
     * Account ViewBuilder
     */
    @ViewBuilder
    var accountView: some View {
        TabView {
            ListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
