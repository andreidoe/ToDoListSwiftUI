//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    /*
     * Insert user into Firebase DB
     */
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, 
                           name: name,
                           email: email,
                           joinedAt: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    /*
     * Register validation
     */
    func validate() -> Bool {
        guard !Validator.inputIsEmpty(name),
              !Validator.inputIsEmpty(email),
              !Validator.inputIsEmpty(password) else {
            return false
        }
        
        guard Validator.isValidEmail(email) else {
            return false
        }
        
        guard Validator.isValidPasswordLength(password) else {
            return false
        }
        
        return true
    }
    
}
