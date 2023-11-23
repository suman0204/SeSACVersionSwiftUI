//
//  NavigationWrapper.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct NavigationWrapper<Content: View>: View {
    var content: Content
    
    init(@ViewBuilder content: () -> Content ) {
        self.content = content()
    }
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack{
                content
            }
        } else {
            NavigationView {
                content
            }
        }
    }
}
