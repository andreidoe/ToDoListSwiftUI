//
//  Validator.swift
//  ToDoList
//
//  Created by андрій doe on 25.07.2024.
//

import Foundation

class Validator {
    
    /*
     * Validate email
     */
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,64}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES[c] %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    /*
     * Check if input is empty
     */
    static func inputIsEmpty(_ field: String) -> Bool {
        return field.trimmingCharacters(in: .whitespaces).isEmpty
    }
    
    /*
     * Check if password longer than 6 symbols
     */
    static func isValidPasswordLength(_ password: String) -> Bool {
        return password.count >= 6
    }
}
