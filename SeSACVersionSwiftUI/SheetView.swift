//
//  SheetView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/24.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                ShareLink(item: URL(string: "https://www.naver.com")!) {
                    Text("링크 공유하기")
                }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .wrapToButton {
                        print("==")
                        showSheet = true
                }
            }
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Test")
                .presentationDetents([.small])
                .presentationDragIndicator(.hidden)
        })
    }
}

extension PresentationDetent {
    static let small = Self.height(200)
}

#Preview {
    SheetView()
}
