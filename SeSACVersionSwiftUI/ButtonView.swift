//
//  ButtonView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            text
                .wrapToButton {
                    print("text click")
                }
            
            image
                .wrapToButton {
                    print("image click")
                }
            
            rectangle
                .wrapToButton {
                    print("rectangle click")
                }
        }
    }
    
    var text: some View {
        Text("Hello, World!")
            .padding(30)
            .background(.black)
            .foreground(.white)
            .font(.largeTitle)

    }
    
    var image: some View {
        Image(systemName: "person.fill")
            .scaleEffect(2)
            .padding()
    }
    
    var rectangle: some View {
        Rectangle()
            .padding()
            .frame(height: 100)
    }
}





#Preview {
    ButtonView()
}
