//
//  MainView.swift
//  SeSACVersionSwiftUI
//
//  Created by 홍수만 on 2023/11/23.
//

import SwiftUI

struct MainView: View {
    var sampleTest = false
    
    var body: some View {
        
        NavigationWrapper {
            Text("이것이 네이게이션 래퍼다")
                .navigationTitle("메인")
                .navigationBar {
                    Image(systemName: "star.fill")
                } trailing: {
                    Text("안녕")
                }

//                .toolbar {
//                    ToolbarItem(placement: .topBarLeading) {
//                        Image(systemName: "star")
//                    }
//                    ToolbarItem(placement: .topBarTrailing) {
//                        Image(systemName: "star")
//                    }
//                }
//                .navigationBarItems(
//                    leading: Image(systemName: "star"),
//                    trailing: EmptyView()
//                )
            
            sample
        }
    }
    
    @ViewBuilder
    var sample: some View {
        if sampleTest {
            Text("안녕하세여")
        } else {
            Text("안녕히가세요")
        }
    }
}

#Preview {
    MainView()
}
