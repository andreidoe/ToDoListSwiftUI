//
//  HeaderView.swift
//  ToDoList
//
//  Created by андрій doe on 24.07.2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350
        )
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", 
               subTitle: "Subtitle",
               angle: 15,
               backgroundColor: .blue
    )
}
