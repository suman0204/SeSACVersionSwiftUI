//
//  TabBadgeView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct TabBadgeView: View {
    var body: some View {
        TabView {
            ForEach(TabItem.allCases, id: \.hashValue) { item in
                item.rootView
                    .tabItem { item.image }
                
            }

        }
//        .tabViewStyle(.page)
    }
}

extension TabBadgeView {
    
    private enum TabItem: CaseIterable {
        case home
        case favorite
        case chat
        case setting
        
        var image: Image {
            switch self {
            case .home:
                Image(systemName: "house")
            case .favorite:
                Image(systemName: "star.fill")
            case .chat:
                Image(systemName: "character.bubble")
            case .setting:
                Image(systemName: "gear")

            }
        }
        
        @ViewBuilder
        var rootView: some View {
            switch self {
            case .home:
               ContentView()
            case .favorite:
                ZStack {
                    Color.green
                    Text("666")
                    Text("Favorite View")
                }
            case .chat:
                ZStack {
                    Color.gray
                    Text("Chat View")
                }
            case .setting:
                ZStack {
                    Color.purple
                    Text("setting View")
                }
            }
        }
    }
}

#Preview {
    TabBadgeView()
}
