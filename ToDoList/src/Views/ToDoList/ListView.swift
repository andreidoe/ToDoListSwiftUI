//
//  ItemsListView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showCreateItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showCreateItemView, content: {
                CreateItemView(newItemCreated: $viewModel.showCreateItemView)
            })
        }
    }
}

#Preview {
    ListView(userId: "")
}
