//
//  ComponentView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/24.
//

import SwiftUI

struct ComponentView: View {
    
    let apple = ["iOS", "iPadOS", "macOS", "watchOS", "visionOS"]
    
    @State private var selectedIndex = 3
    
    var body: some View {
        
        List {
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Apple")
                }
                .pickerStyle(.menu)                
            }
            
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Apple")
                }
                .pickerStyle(.menu)
            }
        }
        
    }
}

#Preview {
    ComponentView()
}
