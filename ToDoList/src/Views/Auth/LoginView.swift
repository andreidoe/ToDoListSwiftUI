//
//  LoginView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subTitle: "Get things done",
                           angle: 15,
                           backgroundColor: .blue
                )
                
                // Login Form
                Form {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    
                    FormSubmitButtonView(
                        title: "Log In",
                        backgroundColor: .blue
                    )
                    .padding()
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
