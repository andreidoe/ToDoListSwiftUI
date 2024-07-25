//
//  LoginView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subTitle: "Get things done",
                           angle: 15,
                           backgroundColor: .blue
                )
                
                Form {
                    TextField("Email", text: $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    FormSubmitButtonView(title: "Log In", backgroundColor: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                // Create Account
                
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an Account",
                                   destination: RegisterView()
                    )
                    .padding(.bottom, 50)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
