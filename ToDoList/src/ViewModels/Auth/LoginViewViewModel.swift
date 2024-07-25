//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    /*
     * Login
     */
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    /*
     * Login validation
     */
    private func validate() -> Bool {
        errorMessage = ""

        guard !Validator.inputIsEmpty(email),
              !Validator.inputIsEmpty(password) else {
            
            errorMessage = "Incorrect email or password"
            return false
        }
        
        guard Validator.isValidEmail(email) else {
            errorMessage = "Given email is invalid"
            return false
        }
        
        return true
    }
}
