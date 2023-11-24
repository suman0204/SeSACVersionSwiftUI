//
//  ButtonWrapper.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct ButtonWrapper: ViewModifier {
    
    let action: () -> Void
    
    func body(content: Content) -> some View {
        Button(
            action: action,
            label: {content}
        )
        .buttonStyle(.plain)
    }
}

extension View {
    func wrapToButton(action: @escaping () -> Void ) -> some View {
        modifier(ButtonWrapper(action: action))
    }
}
