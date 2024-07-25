//
//  NewItemView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct CreateItemView: View {
    @StateObject var viewModel = CreateItemViewModel()
    @Binding var newItemCreated: Bool
    
    var body: some View {
        VStack {
            Text("New item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 10)
            
            Form {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                SubmitButton(title: "Save", backgroundColor: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemCreated = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Please, fill in all the fields and select due date that is today or newer")
                )
            }
        }
    }
}

#Preview {
    CreateItemView(newItemCreated: Binding(
        get: { return true },
        set: { _ in }
    ))
}
