//
//  FormSubmitButtonView.swift
//  ToDoList
//
//  Created by андрій doe on 25.07.2024.
//

import SwiftUI

struct FormSubmitButtonView: View {
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button {
            // Attempt tp login
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    FormSubmitButtonView(
        title: "title",
        backgroundColor: .blue
    )
}
