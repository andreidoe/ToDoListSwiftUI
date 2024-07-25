//
//  FormSubmitButtonView.swift
//  ToDoList
//
//  Created by андрій doe on 25.07.2024.
//

import SwiftUI

struct SubmitButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    SubmitButton(
        title: "title",
        backgroundColor: .blue
    ) {
        //
    }
}
