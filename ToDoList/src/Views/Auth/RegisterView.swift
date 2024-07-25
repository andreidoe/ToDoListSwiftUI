//
//  RegisterView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subTitle: "Start organizing things",
                       angle: -15,
                       backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                FormSubmitButtonView(
                    title: "Sign Up",
                    backgroundColor: .blue
                )
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
