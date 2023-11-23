//
//  ContentView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Image(systemName: "globe")
                .imageScale(.large)
                .foreground(.yellow) //15+
            
            
            Text("iOS")
                .asPointBackgroundText()
            
            Text("SwiftUI")
                .asPointBackgroundText()

            Text("UIKit")
                .asPointBackgroundText()

            Button(action: {
                
            }, label: {
                Text("Button")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.black)
            })

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
